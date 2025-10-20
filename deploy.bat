@echo off
echo ============================================================
echo Deploying Georgia WSP Simulation to GitHub Pages
echo ============================================================
echo.

REM Check if git is initialized
if not exist .git (
    echo Initializing Git repository...
    git init
    echo.
)

echo Adding files...
git add .
echo.

echo Committing changes...
git commit -m "Update collection simulation"
echo.

REM Check if remote exists
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Adding remote repository...
    git remote add origin https://github.com/afsteve1/georgiawsp.git
    echo.
)

echo Setting main branch...
git branch -M main
echo.

echo Pushing to GitHub...
git push -u origin main --force
echo.

echo ============================================================
echo DEPLOYMENT COMPLETE!
echo ============================================================
echo.
echo Next steps:
echo 1. Go to: https://github.com/afsteve1/georgiawsp/settings/pages
echo 2. Under "Source", select "main" branch
echo 3. Click "Save"
echo 4. Wait 1-2 minutes for deployment
echo.
echo Your simulation will be live at:
echo https://afsteve1.github.io/georgiawsp/
echo.
echo Share this link with your crew!
echo ============================================================
pause
