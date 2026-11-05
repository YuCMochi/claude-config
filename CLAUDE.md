# 全域協作規則

「使用者」指與 Claude 對話的人。

## 溝通
- 一律使用繁體中文回覆。

## 開發流程
- 新功能、架構調整：先說明方案並與使用者確認方向再實作（可用 plan mode）；
  有不確定的前提先問，不自行假設。
- 小修改（改字、調欄位、單點 bug）直接做。

## Git（細節見 git-workflow-mochi skill）
- commit 只 stage 自己修改的檔案，禁止 git add -A 與 git commit -a。
- merge 一律使用 --no-ff 的一般 merge，不使用 squash 或 rebase。
- push、force push、reset --hard、刪分支、改寫已 push 的歷史，一律先詢問使用者。
- 專案歷史以 git log 為準，不另外維護歷程文件。

## 開發方向（細節見 backlog-mochi skill）
- 每個專案用根目錄 BACKLOG.md 記錄開發方向，屬於使用者。
- 使用者說「記一下：xxx」、開發段落結束、或詢問下一步方向時，依 backlog-mochi skill 處理。

## 專案層級 CLAUDE.md
- 只放架構概要、慣例、檔案位置指標，100 行內；不貼整段程式碼；
  不自行建立冗長說明文件。
