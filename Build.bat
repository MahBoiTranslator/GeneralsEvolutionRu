@mkdir Translation
@start Tools\MakeBig.exe -f -o:Translation\GenEvo_B0.21_English.big Source\csf
@mkdir Translation\Launcher
@copy Source\readme.txt Translation\readme.txt
@xcopy /h /y /c /r /s Source\Launcher Translation\Launcher