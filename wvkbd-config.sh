#!/bin/bash

wfpanel="/home/pi/.config/wf-panel-pi.ini"
usrbin="/usr/bin/"
line_to_add="launcher_000004=/usr/bin/wvkbd.desktop"

# 确保 toggle-wvkbd.sh 和 wvkbd.desktop 文件路径正确
toggle_wvkbd="./toggle-wvkbd.sh"
wvkbd_desktop="./wvkbd.desktop"

# 为 toggle-wvkbd.sh 添加执行权限
chmod +x "$toggle_wvkbd"

# 将 toggle-wvkbd.sh 和 wvkbd.desktop 复制到 /usr/bin/
cp "$toggle_wvkbd" "$usrbin"
cp "$wvkbd_desktop" "$usrbin"

# 检查文件是否存在
if [ -f "$wfpanel" ]; then
    # 添加内容到文件的最后一行
    echo "$line_to_add" >> "$wfpanel"
    echo "Success add to $wfpanel"
else
    echo "$wfpanel not exist"
fi
