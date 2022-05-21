@echo off

REM 此bat用于桌面整理：桌面图标分类之后
REM 使用该bat需要访问c:\BATcontrol\下的两个文件夹userDesktop和publicDesktop，清理桌面对照使用的是这两个文件夹中的图标

REM 处理用户桌面图标和文件
cd %userprofile%\Desktop\
REM 定义c:\BATcontrol\userDesktop\%%i为标准用户图标
for /f  "delims=[" %%i in ('dir /b') do (if not exist c:\BATcontrol\userDesktop\%%i (del %userprofile%\Desktop\"%%i"))

REM 处理公共桌面图标和文件
cd C:\Users\Public\Desktop\
REM 定义c:\BATcontrol\%%i为标准公共图标
for /f  "delims=[" %%i in ('dir /b') do (if not exist c:\BATcontrol\publicDesktop\%%i (del C:\Users\Public\Desktop\"%%i"))

REM pause