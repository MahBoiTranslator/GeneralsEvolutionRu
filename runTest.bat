@echo off

: Сборка и копирование файлов локализации
call Build.bat

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 10

: Копирование файлов мода в папку для тестов, а карт в апдату
xcopy /h /y /c /r /s Translation\Launcher\* _Test\Launcher\*
xcopy /h /y /c /r /s Translation\GenEvo_B0.3_English.big _Test\GenEvo_B0.21_English.big
xcopy /h /y /c /r /s Translation\Maps\* %appdata%\"Red Alert 3"\Maps

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 10

: Запуск игры
@start C:\Users\PC\Documents\"Red Alert 3"\Mods\GenEvo\GenEvoLauncher.exe
