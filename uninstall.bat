%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo off
cd /d "%SystemRoot%\system32"
echo. Clear old kms service...
slmgr /upk
slmgr /ckms
slmgr /rearm
echo. 
echo. $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo. $                                            $
echo. $               Old KMS Cleared!!            $
echo. $                                  IoTcat    $
echo. $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo. 
echo. System will reboot NOW!!!
echo. 按任意键重启电脑
pause > nul
shutdown -r -t 0