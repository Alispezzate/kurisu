#pragma once

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT
#endif

#include "anisthesia/include/anisthesia/media.hpp"
#include "anisthesia/include/anisthesia/player.hpp" //<anisthesia/player.hpp>
#include "anisthesia/include/anisthesia/win_platform.hpp" //<anisthesia/win_platform.hpp>

extern "C" FFI_PLUGIN_EXPORT int AnisthesiaInit();