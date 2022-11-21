@echo off

: Копирование карт из текущего репозитория в %appdata%
xcopy /h /y /c /r /s ..\Source\Maps\* %appdata%\"Red Alert 3"\Maps\*
del /a:h %appdata%\"Red Alert 3"\Maps\.git
del %appdata%\"Red Alert 3"\Maps\*.str %appdata%\"Red Alert 3"\Maps\*.md
