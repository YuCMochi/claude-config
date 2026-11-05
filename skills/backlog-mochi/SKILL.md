---
name: backlog-mochi
description: Use when the user says "記一下", finishes a development stage, or asks what to do next or about project direction. Manages the project's BACKLOG.md (Now / Next / Ideas / Parked).
---

# BACKLOG.md 管理

BACKLOG.md 位於專案根目錄，記錄開發方向，屬於使用者，由使用者主導。

## 檔案不存在時
第一次需要用到就依下列模板建立：

```markdown
# Backlog

## Now（正在做／下一個要做，最多 1–3 項）

## Next（已決定要做，還沒排）

## Ideas（還沒決定，一行一個，附一句為什麼）

## Parked（想過但決定不做，附原因，避免重想）
```

## 規則
- 每項只寫一行，不寫規格。決定要做時，再與使用者在對話中展開。
- 使用者說「記一下：xxx」：直接 append 到 Ideas，不需確認。
- 不要自行在 Ideas / Next / Now 之間移動項目，也不要自行新增項目到 Now 或 Next。

## 開發段落結束時
- 刪除已完成的項目（歷史在 git log，不保留）。
- 若實作中發現新的待辦，只提出建議，由使用者決定是否寫入。

## 使用者詢問下一步方向時
- 讀 BACKLOG.md 與近期 git log，比較優先序，
  指出項目間的依賴或可合併之處。
