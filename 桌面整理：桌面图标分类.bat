@echo on

REM ������ͼ����ļ����ൽc:\BATcontrol\���½��������ļ���userDesktop��publicDesktop����BAT�ö���ʽ��������������֮ǰ

cd %userprofile%\Desktop\
if exist c:\BATcontrol\userDesktop (rd c:\BATcontrol\userDesktop /Q /S) else (echo new doc will be created!)
xcopy %userprofile%\Desktop\ c:\BATcontrol\userDesktop\ /YIE

cd C:\Users\Public\Desktop\
if exist c:\BATcontrol\publicDesktop (rd c:\BATcontrol\publicDesktop /Q /S) else (echo new doc will be created!)
xcopy C:\Users\Public\Desktop\ c:\BATcontrol\publicDesktop\ /YIE

REM ��ԭͼ��
REM xcopy c:\BATcontrol\userDesktop\ %userprofile%\Desktop\ /Y
REM xcopy c:\BATcontrol\publicDesktop\ C:\Users\Public\Desktop\ /Y

REM pause