Name "Wheel"
OutFile "wheel.exe"
SilentInstall silent
Icon "wheel.ico"
InstallDir "$TEMP\WHEEL"
RequestExecutionLevel user

Section
SetOutPath "$INSTDIR"
File "dist\*.ico"
File "dist\*.css"
File "dist\*.html"
Push "$INSTDIR"
SetOutPath "$INSTDIR\static"
File /r "static\*.png"
File /r "static\*.mp3"
Pop "$INSTDIR"
SetOutPath "$INSTDIR"
ExecShell 'open' '"$TEMP\WHEEL\index.html"'
SectionEnd
