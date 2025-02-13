@echo off
cd /d c:\Users\werne\my-webapp\NexumAI
REM Check your remote URL
git remote -v
REM Stage all changes
git add .
REM Commit changes with a message
git commit -m "Your commit message here"
REM Push changes to the 'main' branch
git push origin main
pause
