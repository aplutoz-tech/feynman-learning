"""
從 GitHub 直接下載費曼學習法筆記到 Obsidian vault
不需要 git，不受 Google Drive 鎖定問題影響
"""
import os
import json
import urllib.request

GITHUB_USER = "aplutoz-tech"
GITHUB_REPO = "feynman-learning"
OBSIDIAN_NOTES = r"G:\我的雲端硬碟\2ndbrain\知識庫\費曼學習法\notes"

os.makedirs(OBSIDIAN_NOTES, exist_ok=True)

api_url = f"https://api.github.com/repos/{GITHUB_USER}/{GITHUB_REPO}/contents/notes"

print("正在從 GitHub 取得筆記清單...")
req = urllib.request.Request(api_url, headers={"User-Agent": "feynman-sync"})
with urllib.request.urlopen(req) as r:
    files = json.loads(r.read())

count = 0
for f in files:
    if not f["name"].endswith(".md"):
        continue
    dest = os.path.join(OBSIDIAN_NOTES, f["name"])
    print(f"  下載：{f['name']}")
    req = urllib.request.Request(f["download_url"], headers={"User-Agent": "feynman-sync"})
    with urllib.request.urlopen(req) as r:
        content = r.read()
    with open(dest, "wb") as out:
        out.write(content)
    count += 1

print(f"\n完成！共同步 {count} 篇筆記")
print(f"位置：{OBSIDIAN_NOTES}")
