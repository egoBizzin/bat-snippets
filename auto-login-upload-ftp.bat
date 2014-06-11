rem change the following fields in your case
rem 1_FTP_USER_NAME, 2_FTP_PASSWORD, 3_REMOTE_DIRECTORY, 4_FILE_TO_PUT, 5_FTP_SERVER
@echo off
cd /d "%~dp0"
echo user 1_FTP_USER_NAME>ftp.log
echo 2_FTP_PASSWORD>>ftp.log
echo cd /3_REMOTE_DIRECTORY>>ftp.log
echo put 4_FILE_TO_PUT>>ftp.log
echo quit>>ftp.log
ftp -n -s:ftp.log 5_FTP_SERVER
del ftp.log