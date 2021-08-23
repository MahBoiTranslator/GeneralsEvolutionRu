@echo off

: Сборка и копирование файлов локализации
call BuildWithoutMaps.bat
xcopy /h /y /c /r /s Translation\Launcher\* _Test\Launcher\*
xcopy /h /y /c /r /s Translation\GenEvo_B0.21_English.big _Test\GenEvo_B0.21_English.big
: xcopy /h /y /c /r /s Translation\Maps\* "%appdata%\Red Alert 3\Maps"

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
start _Test\GenEvo.exe
