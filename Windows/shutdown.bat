@echo off
@REM Copyright 2018-present, Yudong (Dom) Wang
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM      http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.

@REM -----------------------------------------------------------------------------
@REM Holer Shutdown
@REM -----------------------------------------------------------------------------
title holer-client
setlocal enabledelayedexpansion

set errorlevel=
set HOLER_BIN=holer-windows-amd64.exe
set HOLER_LINE=------------------------------------------

@echo !HOLER_LINE!
tasklist | findstr !HOLER_BIN!

if !errorlevel! equ 0 (
    @echo !HOLER_LINE!
    @echo.

    taskkill /f /t /im !HOLER_BIN!

    @echo.
    @echo Stopped holer client.
    @echo.
) else (
   @echo.
   @echo Holer client is stopped.
   @echo.
)

@echo !HOLER_LINE!
pause
goto:eof
