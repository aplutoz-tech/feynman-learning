@echo off
chcp 65001 >nul
echo 設定費曼學習法筆記同步...
mkdir "G:\我的雲端硬碟ndbrain\知識庫\費曼學習法" 2>nul
cd /d "G:\我的雲端硬碟ndbrain\知識庫\費曼學習法"
git init
git remote add origin https://github.com/aplutoz-tech/feynman-learning.git 2>/dev/null || git remote set-url origin https://github.com/aplutoz-tech/feynman-learning.git
git fetch origin
git checkout -b main --track origin/main 2>/dev/null || git checkout main
git pull origin main
echo.
echo 完成！筆記已同步到 Obsidian 知識庫
echo 位置：知識庫/費曼學習法/notes/
pause
