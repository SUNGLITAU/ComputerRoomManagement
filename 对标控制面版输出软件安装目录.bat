@echo on

c:
if not exist c:\BATcontrol (mkdir c:\BATcontrol) else (echo BATcontrol exist!)

::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall ��ӦTXTΪregPathNameList.txt
set path1=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall

::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall ��ӦTXTΪregPathNameListUser.txt
set path2=HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall

::HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall ��ӦTXTΪregPathNameList32.txt
set path3=HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall


REM ע���װ���֣�������ֻ�ȡ��
if exist c:\BATcontrol\regNameList.txt (del c:\BATcontrol\regPathNameList.txt /q) else (create new txt!)
for /f "delims=" %%i in ('reg query "%path1%"') do echo %%~nxi>>c:\BATcontrol\regPathNameList.txt

if exist c:\BATcontrol\regNameList.txt (del c:\BATcontrol\regPathNameListUser.txt /q) else (create new txt!)
for /f "delims=" %%i in ('reg query "%path2%"') do echo %%~nxi>>c:\BATcontrol\regPathNameListUser.txt

if exist c:\BATcontrol\regNameList.txt (del c:\BATcontrol\regPathNameList32.txt /q) else (create new txt!)
for /f "delims=" %%i in  ('reg query "%path3%"') do echo %%~nxi>>c:\BATcontrol\regPathNameList32.txt

REM ��ѯʱ������һ�У��������к��ȫ��չʾ����
if exist c:\BATcontrol\regNameList.txt (del c:\BATcontrol\regNameList.txt /q) else (create new txt!)
echo ---------------------Ĭ��λ��----------------------->>c:\BATcontrol\regNameList.txt
for /f "delims=[" %%b in (c:\BATcontrol\regPathNameList.txt) do (
for /f "skip=2 tokens=3,4,5,6,7,8,9,10,11,12,13,14" %%i in ('reg query "%path1%\%%b" /v "DisplayName"') do (echo %%i %%j %%k %%l %%m %%n %%o %%p %%q %%r>>c:\BATcontrol\regNameList.txt))

echo ---------------------�û�λ��----------------------->>c:\BATcontrol\regNameList.txt
for /f "delims=[" %%b in (c:\BATcontrol\regPathNameListUser.txt) do (
for /f "skip=2 tokens=3,4,5,6,7,8,9,10,11,12,13,14" %%i in ('reg query "%path2%\%%b" /v "DisplayName"') do (echo %%i %%j %%k %%l %%m %%n %%o %%p %%q %%r>>c:\BATcontrol\regNameList.txt))

echo ---------------------32λ���----------------------->>c:\BATcontrol\regNameList.txt
for /f "delims=[" %%b in (c:\BATcontrol\regPathNameList32.txt) do (
for /f "skip=2 tokens=3,4,5,6,7,8,9,10,11,12,13,14" %%i in ('reg query "%path3%\%%b" /v "DisplayName"') do (echo %%i %%j %%k %%l %%m %%n %%o %%p %%q %%r>>c:\BATcontrol\regNameList.txt))

::del c:\BATcontrol\regPathNameList.txt /q
::del c:\BATcontrol\regPathNameListUser.txt /q
::del c:\BATcontrol\regPathNameList32.txt /q

pause