@ECHO OFF
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
call "%VCINSTALLDIR%"\Auxiliary\Build\vcvarsall.bat x86
pushd code
pushd build
start cmd
popd
popd
set path=C:\emacs;%path%
set "editor=emacs"
emacs\emacs.bat
