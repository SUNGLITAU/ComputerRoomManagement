@echo on
REM �ƶ����������ļ�

c:
if not exist c:\BATcontrol (mkdir c:\BATcontrol) else (echo BATcontrol exist!)
cd %userprofile%\Desktop\

REM ��װ���ļ�����
for %%i in (*.exe,*.msi) do (xcopy "%%i" d:\DesktopDocBackup\InsEXE\ /YI)
for %%i in (*.exe,*.msi) do (del "%%i")

REM ͨ�ð칫�ĵ�����
for %%i in (*.pptx,*.ppt,*.doc,*docx,*.xls,*.xlsx,*.txt,*.pdf) do (xcopy "%%i" d:\DesktopDocBackup\MSdoc\ /YI)
for %%i in (*.pptx,*.ppt,*.doc,*docx,*.xls,*.xlsx,*.txt,*.pdf) do (del "%%i")

REM ѹ���ļ�����
for %%i in (*.zip,*.rar,*.7z) do (xcopy "%%i" d:\DesktopDocBackup\Zip\ /YI)
for %%i in (*.zip,*.rar,*.7z) do (del "%%i")

REM ͼƬ����
for %%i in (*.png,*.jpeg,*.jpg,*.bmp,*.gif,*.webp,*.jfif) do (xcopy "%%i" d:\DesktopDocBackup\picture\ /YI)
for %%i in (*.png,*.jpeg,*.jpg,*.bmp,*.gif,*.webp,*.jfif) do (del "%%i")

REM �ļ��д���
dir /ad /B > C:\BATcontrol\tmpList.txt 
for /f "delims=[" %%i in (C:\BATcontrol\tmpList.txt) do (xcopy %userprofile%\desktop\"%%i" d:\DesktopDocBackup\"%%i"\ /YIE)
for /f "delims=[" %%i in (C:\BATcontrol\tmpList.txt) do (rd %userprofile%\desktop\"%%i" /S /Q)
del C:\BATcontrol\tmpList.txt 

REM �����ļ�����ö��ʽ����ȫ��ɾ��
for %%i in (*.cs,*.unitypackage,*.cpp,*.py,*.html,*.htm,*.php,*.mp4,*.mp3,*.) do (del "%%i")

REM pause