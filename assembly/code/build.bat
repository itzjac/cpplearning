@echo OFF
REM MASMx86
set CommonLinkerFlags= -MACHINE:X86 -incremental:no -opt:ref kernel32.lib

IF NOT DEFINED editor (
pushd code
)

IF NOT EXIST "build\" mkdir build
pushd build

ml /c ../addtwo.asm  
LINK addtwo.obj %CommonLinkerFlags% /SUBSYSTEM:CONSOLE /ENTRY:"main

C:\mingw64\bin\as.exe ..\cpuid.s -o cpuid.o
C:\mingw64\bin\ld.exe -o cpuid.exe cpuid.o -L C:\mingw64\x86_64-w64-mingw32\lib -lkernel32
C:\MinGW\bin\as.exe ..\cpuidx86.s -o cpuidx86.o
C:\MinGW\bin\ld.exe -o cpuidx86.exe cpuidx86.o -L C:\MminGW\lib -lkernel32

call "%VCINSTALLDIR%"\Auxiliary\Build\vcvarsall.bat x64
ml64 /c /Zi  ..\\hello.s
cl -MTd -D_CRT_SECURE_NO_WARNINGS -nologo -Gm- -GR- -EHa -Od -Oi -Z7 ..\\helloasm.cpp /link /SUBSYSTEM:CONSOLE -MACHINE:X64 -incremental:no -opt:ref hello.obj

ml64 /c ..\\main.asm
LINK main.obj /SUBSYSTEM:CONSOLE /ENTRY:"main
popd
IF NOT DEFINED editor (popd)
