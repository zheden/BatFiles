@if not exist %1  echo File %1 doesn't exist in %~dp1 && EXIT /B 2 

@msbuild %1 /t:%2 /p:Configuration=%3 >NUL 2>&1

@rar a -ep %4\%~n1  %~dp1bin\%3\%~n1.exe >NUL 2>&1
