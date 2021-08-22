: Сборка .big файла перевода
mkdir Translation
start Tools\MakeBig.exe -f -o:Translation\GenEvo_B0.21_English.big Source\csf

: "Сборка" клиента
mkdir Translation\Launcher
copy Source\readme.txt Translation\readme.txt
xcopy /h /y /c /r /s Source\Launcher Translation\Launcher

: "Сборка" карт
mkdir Translation\Maps
xcopy /h /y /c /r /s Source\Maps\ Translation\Maps\ 
del Translation\Maps\readme.md
del /a:h Translation\Maps\.git
