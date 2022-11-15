@echo off

: Сборка и копирование файлов локализации
call BuildWithoutMaps.bat
xcopy /h /y /c /r /s Translation\Launcher\* C:\Users\PC\Documents\"Red Alert 3"\Mods\GenEvo\Launcher\*
xcopy /h /y /c /r /s Translation\GenEvo_B0.3_English.big C:\Users\PC\Documents\"Red Alert 3"\Mods\GenEvo\GenEvo_B0.3_English.big

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
start C:\Users\PC\Documents\"Red Alert 3"\Mods\GenEvo\GenEvoLauncher.exe
