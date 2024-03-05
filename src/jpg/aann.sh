@echo off
setlocal enabledelayedexpansion

rem Set the directory path
set "dir_path=C:\path\to\your\directory"

rem Iterate over all files in the directory
for %%F in ("%dir_path%\*-min.*") do (
    rem Extract the filename and extension
    set "filename=%%~nF"
    set "extension=%%~xF"
    
    rem Remove "-min" from the filename
    set "new_filename=!filename:-min=!"
    
    rem Rename the file
    ren "%%F" "!new_filename!!extension!"
)

echo All files renamed.
