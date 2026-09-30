# Frame.io 上傳小精靈

個人版影片自動上傳工具的同事版（下班後自動把影片傳到 Frame.io 並合併版本）。

## repo 與發版

- GitHub：`Shifu-Ming/frameio-uploader`（private）。gh 一律用 Shifu-Ming 帳號。
- 交付檔只有 `dist/` 底下的 `Frame.io 上傳小精靈.app.zip`（⛔ 別把 `.venv`、`browser_profile` 之類的東西放進去）。
- 發新版：改版本號 → commit → 打包產 `.app.zip` → `gh release create` 附上 `.app.zip`（附件檔名別用中文，見大本營根 CLAUDE.md）。

## ⭐ 發版後要做的事（2026-09-30 加）

**發了新的 GitHub Release 之後，直接接著跑 `release-tool-download-page` skill**，同步 Notion 的「Shifu 獨家影音工具」資料庫與下載頁面（版本號讀 `gh release list -R Shifu-Ming/frameio-uploader -L 1`）。不用問 Ming 要不要做。

## 交付對象

行銷／攝影部同事，透過 Notion 下載頁面「影音部工具下載中心」取得下載連結，不進 ShifuCut 的六支工具編組。
