@echo off

IF EXIST s1built.bin move /Y s1built.bin s1built.prev.bin >NUL
asm68k /k /p /o ae- sonic.asm, s1built.bin >errors.txt, sonic1.sym, sonic.lst
convsym sonic1.sym sonic1.symcmp
copy /B s1built.bin+sonic1.symcmp s1built.bin /Y
del sonic1.symcmp
fixheadr.exe s1built.bin