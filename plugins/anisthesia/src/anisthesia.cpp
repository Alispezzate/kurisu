#include "anisthesia.h"
#include <iostream>
#include <vector>

#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

int anisthesiaInit()
{
    std::vector<anisthesia::Player> players;
    if (!anisthesia::ParsePlayersFile("data/players.anisthesia", players)) {
        std::cerr << "Error: Failed to parse players file." << std::endl;
		return 1;
	}

	const auto media_proc = [](const anisthesia::MediaInfo&) {
        std::cout << "Media found." << std::endl;
		return true;  // Accept all media
		};

	std::vector<anisthesia::win::Result> results;
	if (!anisthesia::win::GetResults(players, media_proc, results)) {
        std::cerr << "Error: Failed to get results." << std::endl;
		return 1;
	}

	const auto get_type = [](const anisthesia::MediaInfoType& type) {
		switch (type) {
		case anisthesia::MediaInfoType::File: return "File";
		case anisthesia::MediaInfoType::Tab: return "Tab";
		case anisthesia::MediaInfoType::Title: return "Title";
		case anisthesia::MediaInfoType::Url: return "URL";
		default: return "Other";
		}
		};

	for (const auto& result : results) {
		std::cout << result.player.name << '\n';
		for (const auto& media : result.media) {
			for (const auto& information : media.information) {
				std::cout << "\t" << get_type(information.type);
				std::cout << "\t\"" << information.value << "\"\n";
			}
		}
	}

	return 0;
}
