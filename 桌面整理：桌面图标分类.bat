@echo on

REM 将桌面图标和文件分类到c:\BATcontrol\下新建的两个文件夹userDesktop和publicDesktop，此BAT用对照式桌面整理批处理之前

cd %userprofile%\Desktop\
if exist c:\BATcontrol\userDesktop (rd c:\BATcontrol\userDesktop /Q /S) else (echo new doc will be created!)
xcopy %userprofile%\Desktop\ c:\BATcontrol\userDesktop\ /YIE

cd C:\Users\Public\Desktop\
if exist c:\BATcontrol\publicDesktop (rd c:\BATcontrol\publicDesktop /Q /S) else (echo new doc will be created!)
xcopy C:\Users\Public\Desktop\ c:\BATcontrol\publicDesktop\ /YIE

REM 复原图标
REM xcopy c:\BATcontrol\userDesktop\ %userprofile%\Desktop\ /Y
REM xcopy c:\BATcontrol\publicDesktop\ C:\Users\Public\Desktop\ /Y

REM pause