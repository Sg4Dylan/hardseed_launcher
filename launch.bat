@echo off&title Hardseed交互脚本BETA  by Sg4dylan

:start
::定义默认数值
@set class=3
@set range=2
@set time=32
@set tasks=8
@set dlpath=D:\
::初始化文字显示
cls
echo Hardseed交互脚本BETA
echo -----------------------------
echo 本脚本使用hardseed工具拉取草榴爱城的种子及配套封面
echo 使用本脚本目的是为了极大地解决呆子们不会用hardseed的问题
echo -----------------------------
echo by SgDylan
pause
cls
::检测GoAgent运行状态
echo 检查GoAgent是否已经运行……
echo -----------------------------
tasklist | findstr /I "goagent"
echo -----------------------------
if errorlevel 1 ((cls&echo 未检测到GoAgent运行 ！)&goto end)
if errorlevel 0 ((echo GoAgent运行正常 ！)&pause&cls&goto Setting)
echo -----------------------------
cls

:Setting
::设定下载参数
echo 确认需要拉取的AV类别
echo -----------------------------
echo 欧美原创 [草榴] → 请输入1
echo 欧美转帖 [草榴] → 请输入2
echo 亚洲无码原创 [草榴] → 请输入3
echo 亚洲无码转帖 [草榴] → 请输入4
echo 亚洲有码原创 [草榴] → 请输入5
echo 亚洲有码转帖 [草榴] → 请输入6
echo 卡通原创 [草榴] → 请输入7
echo 卡通转帖 [草榴] → 请输入8
echo 盖尔达旗帜 [草榴] → 请输入9
echo 亚洲无码 [爱城] → 请输入10
echo 亚洲有码 [爱城] → 请输入11
echo 欧美 [爱城] → 请输入12
echo 卡通 [爱城] → 请输入13
echo -----------------------------
echo 可直接回车默认选择3
echo -----------------------------
set /p class= 输入数字按回车：
if "%class%"=="1" set class=caoliu_west_original
if "%class%"=="2" set class=caoliu_west_reposted
if "%class%"=="3" set class=caoliu_asia_non_mosaicked_original
if "%class%"=="4" set class=caoliu_asia_non_mosaicked_reposted
if "%class%"=="5" set class=caoliu_asia_mosaicked_original
if "%class%"=="6" set class=caoliu_asia_mosaicked_reposted
if "%class%"=="7" set class=caoliu_cartoon_original
if "%class%"=="8" set class=caoliu_cartoon_reposted
if "%class%"=="9" set class=caoliu_selfie
if "%class%"=="10" set class=aicheng_asia_non_mosaicked
if "%class%"=="11" set class=aicheng_asia_mosaicked
if "%class%"=="12" set class=aicheng_west
if "%class%"=="13" set class=aicheng_cartoon
cls
echo 输入拉取的种子数量
echo -----------------------------
echo 下载该类别下全部种子 → 请输入1
echo 下载该类别下100个左右种子 → 请输入2
echo 下载该类别下200个左右种子 → 请输入3
echo 下载该类别下500个左右种子 → 请输入4
echo 下载该类别下1000个左右种子 → 请输入5
echo 下载该类别下5000个左右种子 → 请输入6
echo -----------------------------
echo 可直接回车默认选择2
echo -----------------------------
set /p range= 输入数字按回车：
if "%range%"=="1" set range=-1
if "%range%"=="2" set range=500
if "%range%"=="3" set range=1000
if "%range%"=="4" set range=2000
if "%range%"=="5" set range=5000
if "%range%"=="6" set range=20000
cls
echo 输入下载超时数值
echo -----------------------------
echo 输入1-32的数值，建议32
echo 可直接回车默认32
echo -----------------------------
set /p time= 输入数字按回车：
cls
echo 输入单代理最大下载线程数
echo -----------------------------
echo 输入1-8的整数，建议输入8
echo 可直接回车默认8
echo -----------------------------
set /p tasks= 输入数字按回车：
cls
echo 输入下载路径
echo -----------------------------
echo 输入Windows资源管理器地址栏的路径
echo 可直接回车默认下载D:\
echo -----------------------------
set /p dlpath= 输入后按回车：
cls
echo 按任意键开始下载 
pause


:work
::下载进程启动
@set restart=stop 
hardseed --saveas-path %dlpath% --topics-range %range% --concurrent-tasks %tasks% --av-class %class% --timeout-download-picture %time% --proxy http://127.0.0.1:8087 socks5://127.0.0.1:1080 
echo -----------------------------
echo 下载已完成，是否继续新的下载任务?
echo -----------------------------
echo 是(请输入Y)	否(请输入N)
echo -----------------------------
echo      不输则直接回车退出
echo -----------------------------
set /p restart= 输入后按回车：
if "%restart%"=="Y" set restart=start
if "%restart%"=="y" set restart=start
if "%restart%"=="N" set restart=stop
if "%restart%"=="n" set restart=stop
goto %restart%
cls


:stop
cls
echo 女神都在%dlpath%等你哦~☆
pause
exit


:end
::确认代理情况
@set check=start
echo -----------------------------
echo 如您不使用GoAgent做前置代理
echo 并已修改源代码且前置代理设置完成
echo 请输入 Y 并继续
echo 否则请输入 N 再次检查并继续
echo -----------------------------
set /p check= 输入后按回车：
if "%check%"=="Y" set check=Setting
if "%check%"=="y" set check=Setting
if "%check%"=="N" set check=start
if "%check%"=="n" set check=start
goto %check%
cls



