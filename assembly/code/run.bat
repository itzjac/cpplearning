@ECHO OFF
pushd build

addtwo
cpuidx86
main
ECHO %ErrorLevel%
helloasm
ECHO %ErrorLevel%
popd