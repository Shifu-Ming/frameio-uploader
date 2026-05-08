#!/bin/bash
# Frame.io 上傳小精靈 ─ 完全重置
# 雙擊執行：清掉所有登入 / 設定 / 排程 / log，回到第一次使用狀態
# 用途：登入卡住、想換 Adobe 帳號、整個重來時用

set +e

echo "🧹 開始重置 Frame.io 上傳小精靈..."
echo ""

# 1. 殺掉跑著的 server
echo "[1/4] 殺掉跑著的 server..."
lsof -ti :8765 2>/dev/null | xargs kill 2>/dev/null
pkill -f "Frame.io 上傳小精靈" 2>/dev/null
sleep 0.5
echo "      ✓"

# 2. 取消排程
echo "[2/4] 取消 launchd 排程..."
launchctl unload "$HOME/Library/LaunchAgents/tw.shifu.frameio-upload.plist" 2>/dev/null
rm -f "$HOME/Library/LaunchAgents/tw.shifu.frameio-upload.plist"
echo "      ✓"

# 3. 刪設定 + cookies
echo "[3/4] 刪除設定與登入 cookies..."
rm -rf "$HOME/Library/Application Support/Frame.io 上傳小精靈"
echo "      ✓"

# 4. 刪 log
echo "[4/4] 刪除 log..."
rm -rf "$HOME/Library/Logs/Frame.io 上傳小精靈"
echo "      ✓"

echo ""
echo "✅ 已完全重置"
echo ""
echo "下次雙擊 .app 會像第一次使用："
echo "  - 介面右上角顯示「未登入」"
echo "  - 跳出紅色「歡迎」引導框"
echo "  - 沒有排程"
