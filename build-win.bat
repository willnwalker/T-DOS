@echo off
color a
echo Build script for Windows
echo.

echo Assembling OS Kernel...
cd tools
start nasm2 -O0 -f bin -o %~d0\T-DOS\bin\bootload.bin %~d0\T-DOS\src\bootload.asm

echo Adding bootsector to disk image...
start partcopy %~d0\T-DOS\bin\bootload.bin %~d0\T-DOS\img\tdos.flp 0d 511d
cd ..

echo Done!
