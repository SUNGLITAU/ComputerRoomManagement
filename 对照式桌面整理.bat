@echo off

REM ��bat����������������ͼ�����֮��
REM ʹ�ø�bat��Ҫ����c:\BATcontrol\�µ������ļ���userDesktop��publicDesktop�������������ʹ�õ����������ļ����е�ͼ��

REM �����û�����ͼ����ļ�
cd %userprofile%\Desktop\
REM ����c:\BATcontrol\userDesktop\%%iΪ��׼�û�ͼ��
for /f  "delims=[" %%i in ('dir /b') do (if not exist c:\BATcontrol\userDesktop\%%i (del %userprofile%\Desktop\"%%i"))

REM ����������ͼ����ļ�
cd C:\Users\Public\Desktop\
REM ����c:\BATcontrol\%%iΪ��׼����ͼ��
for /f  "delims=[" %%i in ('dir /b') do (if not exist c:\BATcontrol\publicDesktop\%%i (del C:\Users\Public\Desktop\"%%i"))

REM pause