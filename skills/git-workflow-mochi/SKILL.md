---
name: git-workflow-mochi
description: Use whenever committing, branching, merging, or running any git operation in a project. Covers atomic commits, commit message style, handling the user's uncommitted changes, and merge strategy.
---

# Git 工作規則

Claude 負責 commit、分支、本地 merge。

## Commit
- 原子化：一個 commit 只做一件事，能單獨 revert 而不破壞其他內容。
- 重構與功能分開 commit。
- 完成一個邏輯單元就 commit，不要累積到 session 結束。
- 訊息：標題一行說明做了什麼；僅在「原因」從 diff 看不出來時，
  才在 body 補原因、取捨或放棄的方案。不要每個 commit 都寫長 body。

## 開始工作前
- 先跑 git status。若有 Claude 本次 session 之前就存在的未提交改動，
  視為使用者手動修改：先告知使用者，不要併入 Claude 的 commit。
- 同一檔案內使用者與 Claude 的改動混在一起時，用 git add -p 分開；
  分不開就詢問使用者。

## 修改既有功能前
- 先看相關檔案的 git log，了解當初為什麼這樣寫。

## Merge
- 一律 --no-ff 的一般 merge，完整保留歷史。不使用 squash 或 rebase。

## 必須先問使用者
- push、force push、reset --hard、刪分支、改寫已 push 的歷史。
