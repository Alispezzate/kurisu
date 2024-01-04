// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

final anisthesiaDll = DynamicLibrary.open('Anisthesia.dll'); //dll files are located inside the build folder

//int AnisthesiaInit()
final anisthesiaInit = anisthesiaDll.lookupFunction<Int8 Function(), int Function()>('AnisthesiaInit');

int startAnisthesia() {
  return anisthesiaInit();
}