@ECHO OFF
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
call "%VCINSTALLDIR%"\Auxiliary\Build\vcvarsall.bat x86
pushd code
pushd build
start cmd
popd
popd
set path=C:\projects\4coder\4coder-non-source\dist_files;%path%
start 4ed.exe project.4coder