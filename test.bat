@echo off
echo Running Windows Tests...

if exist index.html if exist login.html if exist dashboard.html (
    echo All interface files present
    exit /b 0
) else (
    echo Test failed
    exit /b 1
)
