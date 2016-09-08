rem [1/2]
rem master
rem telnet.bat

rem http://stackoverflow.com/questions/13197376/is-it-possible-to-use-a-batch-file-to-establish-a-telnet-session-send-a-command
rem http://stackoverflow.com/questions/3973824/windows-bat-file-optional-argument-parsing
rem http://ss64.com/nt/if.html

rem usage
rem telnet.bat 192.168.1.1 admin admin 1
rem OR
rem telnet.bat 192.168.1.1 admin admin 2

SET ip=%1
SET user=%2
SET pwd=%3
SET mod=%4
SET mod1="8.8.8.8 8.8.4.4"
SET mod2="1.1.1.1 2.2.2.2"
start telnet.exe %ip%
IF %mod% EQU 1 (cscript sendKeys.vbs %user% %pwd% %mod1%) ELSE (cscript sendKeys.vbs %user% %pwd% %mod2%)
