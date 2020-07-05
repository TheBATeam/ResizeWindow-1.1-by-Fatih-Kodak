@Echo off
cls
Setlocal EnableDelayedExpansion

Title ResizeWindow - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Echo.
Echo. Starting Windows Calculator...
Start calc.exe
timeout /t 3
Set _Width=100
Set _Height=300

For /l %%Y in (0,20,300) do (
	For /l %%X in (0,20,600) do (
		ResizeWindow Calculator %%X %%Y !_Width! !_Height!
		Set /A _Width+=10
		Set /A _Height+=30
	)
	Set /A _Width-=300
	Set /A _Height-=1000
)
Echo. Done...
Echo.
Echo.
Echo.
Echo. Killing Calculator Process...
taskkill /f /im Calc.exe 2>nul >nul
taskkill /f /im Calculator.exe 2>nul >nul
pause
exit