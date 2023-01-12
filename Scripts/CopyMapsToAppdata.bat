@echo off

: Копирование карт из текущего репозитория в %appdata%
xcopy /h /y /c /r /s ..\Source\Maps\[GenEvo]* %appdata%\"Red Alert 3"\Maps\[GenEvo]*
