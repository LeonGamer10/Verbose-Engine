@echo off
color 0a
cd ..
echo Building the shit,,,
haxelib run lime test windows -release -D officialBuild
echo.
echo The game crashed. It's that or it didn't compile, or was closed manually. Either way, it's done.
pause
pwd
explorer.exe export\release\windows\bin