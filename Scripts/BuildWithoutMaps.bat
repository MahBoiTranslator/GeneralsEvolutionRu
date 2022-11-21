@echo off

cd ..
: Сборка .big файла перевода
mkdir Translation
start Tools\MakeBig.exe -f -o:Translation\GenEvo_B0.3_English.big Source\csf

: "Сборка" клиента
mkdir Translation\Launcher
copy Source\readme.txt Translation\readme.txt
xcopy /h /y /c /r /s Source\Launcher\* Translation\Launcher\*
cd Scripts
