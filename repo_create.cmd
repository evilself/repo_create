@ECHO OFF
REM **********************************************************************************************
REM PURPOSE:  CREATES A GITHUB REPOSITORY REMOTELY
REM USATE  :  REPO_CREATE <username> <auth_token> <repo_name> <description>
REM AUTHOR :  BORIS M
REM DATE   :  10.7.2014
REM TOKEN  :  eb85f416ef5ac955cc847dae6fc64584ae4255aa
REM **********************************************************************************************
SET VER=1.0
SET V=********************************************************************************************
IF "%1" == "" GOTO NOARGS
IF "%2" == "" GOTO NOARGS
IF "%3" == "" GOTO NOARGS
IF "%4" == "" GOTO NOARGS

ECHO CREATING "%3" REPOSITORY...
CURL -u "%1:%2" https://api.github.com/user/repos -d "{\"name\":\"%3\",\"description\":\"%4\"}"
ECHO CREATED!

:NOARGS