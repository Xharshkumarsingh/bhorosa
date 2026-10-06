@echo off
echo ========================================================
echo   Bharosa Digital - Automatic Live Deploy Helper
echo ========================================================
echo Adding modified files...
git add .
set /p commit_msg="Enter update summary (press Enter for 'Website live update'): "
if "%commit_msg%"=="" set commit_msg=chore: website live update
echo Committing changes...
git commit -m "%commit_msg%"
echo Pushing to GitHub...
git push origin main
echo.
echo ========================================================
echo [SUCCESS] Pushed to GitHub!
echo Vercel has detected the commit and is building the live update.
echo Your website will refresh live in ~30 seconds!
echo ========================================================
pause
