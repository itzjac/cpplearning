@ECHO off
if NOT EXIST cpuid.sln (devenv /debugexe %~dp0\build\cpuid.exe)
IF  EXIST cpuid.sln (devenv %~dp0\build\cpuid.sln)