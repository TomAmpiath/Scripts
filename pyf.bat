@echo off
setlocal enabledelayedexpansion

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
   set "argVec[!argCount!]=%%~x"
)

if %argCount% NEQ 1 (echo "Usage pyf <filename or directory>" & exit \b 1)

echo ----------------------------------------
echo Sorting Imports
echo ----------------------------------------

isort %1

echo ----------------------------------------
echo Formatting Code
echo ----------------------------------------

black %1

echo ----------------------------------------
echo Done
echo ----------------------------------------