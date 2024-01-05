#ifndef ANISTHESIA_H
#define ANISTHESIA_H

#if _WIN32
#define FFI_PLUGIN_EXPORT extern "C" __declspec(dllexport)
#include <windows.h>
#else
#define FFI_PLUGIN_EXPORT extern "C" __attribute__((visibility("default"))) __attribute__((used))
#endif

#include "anisthesia/include/anisthesia/media.hpp"
#include "anisthesia/include/anisthesia/player.hpp" //<anisthesia/player.hpp>
#include "anisthesia/include/anisthesia/win_platform.hpp" //<anisthesia/win_platform.hpp>

FFI_PLUGIN_EXPORT int anisthesiaInit();

#endif // ANISTHESIA_H