@echo off
chcp 65001 >nul
cd /d "G:\我的雲端硬碟ndbrain\知識庫\費曼學習法"
git pull origin main
echo.
echo 同步完成！請到 Obsidian 知識庫/費曼學習法/notes/ 查看
timeout /t 2 >nul
