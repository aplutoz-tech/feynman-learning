@echo off
chcp 65001 >nul
echo 建立 Obsidian Git 插件資料夾...
mkdir "G:\我的雲端硬碟ndbrain\.obsidian\plugins\obsidian-git" 2>nul
echo 下載插件檔案...
curl -L -o "G:\我的雲端硬碟ndbrain\.obsidian\plugins\obsidian-git\main.js" "https://github.com/denolehov/obsidian-git/releases/latest/download/main.js"
curl -L -o "G:\我的雲端硬碟ndbrain\.obsidian\plugins\obsidian-git\manifest.json" "https://github.com/denolehov/obsidian-git/releases/latest/download/manifest.json"
curl -L -o "G:\我的雲端硬碟ndbrain\.obsidian\plugins\obsidian-git\styles.css" "https://github.com/denolehov/obsidian-git/releases/latest/download/styles.css"
echo.
echo 完成！請重新啟動 Obsidian
pause
