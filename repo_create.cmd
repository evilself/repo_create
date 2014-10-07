@ECHO OFF
REM **********************************************************************************************
REM CREATE A GITHUB REPOSITORY REMOTELY
REM **********************************************************************************************
SET VER=1.0
SET V=********************************************************************************************
IF "%1" == "" GOTO NOARGS
ECHO CREATING "%1" REPOSITORY...
CURL -u "evilself:eb85f416ef5ac955cc847dae6fc64584ae4255aa" https://api.github.com/user/repos -d "{\"name\":\"%1\"}"
ECHO CREATED!

:NOARGS
EXIT 1