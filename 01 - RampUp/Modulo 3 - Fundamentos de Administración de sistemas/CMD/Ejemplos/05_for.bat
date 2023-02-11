@echo off
set list=1 2 3 4
(for %%a in (%list%) do (
    echo %%a
))

:: Recorer carpeta de windows.
for %%f in (c:\windows\*.*) do @echo %%f
