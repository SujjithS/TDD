@echo off
setlocal
setlocal enabledelayedexpansion
del /s /q ".\..\..\..\..\generatedFiles\LinesofCode\cloc_Details\*.*"
del /s /q ".\..\..\..\..\generatedFiles\LinesofCode\*.*"
set Files=
set PathToExe="cloc\cloc-1.84.exe"
rem set PathToExe="cloc-1.84.exe"
SET /A counter =0

FOR /D %%G in (".\..\..\..\..\software\*") DO (
!PathToExe! --exclude-dir=test --by-file-by-lang --include-lang=C,C++ --report-file=.\..\..\..\..\generatedFiles\LinesofCode\cloc_Details\component\%%~nxG  %%G 
echo(serach %%G
set feld[!counter!]=%%G 
set /a counter+=1
if exist .\..\..\..\..\generatedFiles\LinesofCode\cloc_Details\component\%%~nxG set "Files=!Files! .\..\..\..\..\generatedFiles\LinesofCode\cloc_Details\component\%%~nxG
)
)


echo %Files%
!PathToExe! --sum-reports --report_file=.\..\..\..\..\generatedFiles\LinesofCode\TotalText_Report  !Files!
!PathToExe! --sum-reports --csv --report_file=.\..\..\..\..\generatedFiles\LinesofCode\Management_Report !Files!
rename .\..\..\..\..\generatedFiles\LinesofCode\TotalText_Report.lang TotalText_Report_Lang.txt
rename .\..\..\..\..\generatedFiles\LinesofCode\TotalText_Report.file TotalText_Report_File.txt
rename .\..\..\..\..\generatedFiles\LinesofCode\Management_Report.lang Management_Report_Lang.csv
rename .\..\..\..\..\generatedFiles\LinesofCode\Management_Report.file Management_Report_File.csv

mkdir .\..\..\..\..\generatedFiles\SWQualityReports\CountLinesofCode_report
copy .\..\..\..\..\generatedFiles\LinesofCode\*.* .\..\..\..\..\generatedFiles\SWQualityReports\CountLinesofCode_report
python cLocToExcel.py

endlocal