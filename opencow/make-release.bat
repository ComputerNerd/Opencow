set WINRAR="c:\Program Files\WinRAR\winrar.exe"
set RELEASE=0.6

del %TEMP%\opencow-%RELEASE%-dll.zip
del %TEMP%\opencow-%RELEASE%-src.zip

%WINRAR% a -m5 -ep %TEMP%\opencow-%RELEASE%-dll.zip bin\opencow.dll
%WINRAR% a -m5 -r -apopencow %TEMP%\opencow-%RELEASE%-src.zip *.txt *.h *.cpp *.dsw *.dsp *.def *.rc

move %TEMP%\opencow-%RELEASE%-dll.zip ..\opencow-releases\.
move %TEMP%\opencow-%RELEASE%-src.zip ..\opencow-releases\.

pause