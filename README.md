# claude-config

個人的 Claude Code 全域設定：一份 `CLAUDE.md` 加兩個 skill。

## 內容
- `CLAUDE.md`：全域協作規則（精簡，硬規則放這裡）
- `skills/git-workflow-mochi`：commit、merge、未提交改動的處理細節
- `skills/backlog-mochi`：專案 BACKLOG.md 的管理方式

## 安裝（每台裝置一次）
```
git clone <這個 repo> ~/claude-config
cd ~/claude-config
./install.sh        # macOS / Linux / WSL
.\install.ps1       # Windows（需開發人員模式或系統管理員）
```

## 更新
在任一台改完 → commit → push；其他裝置 `git pull` 即可（連結指向 repo，不需重裝）。
新增 skill 後重跑一次安裝腳本。
