@echo off

: Сборка и копирование файлов локализации
call BuildWithoutMaps.bat
xcopy /h /y /c /r /s ..\Translation\GenEvo_B0.3_English.big %USERPROFILE%\Documents\"Red Alert 3"\Mods\GenEvo\GenEvo_B0.3_English.big

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
start %USERPROFILE%\Documents\"Red Alert 3"\Mods\GenEvo\GenEvoLauncher.exe
