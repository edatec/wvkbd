#!/bin/bash
local wfpanel = "/home/pi/.config/wf-panel-pi.ini"
local usrbin = "/usr/bin/"
local line_to_add="launcher_000004=/usr/bin/wvkbd.desktop"

chmod +x toggle-wvkbd.sh
cp ./toggle-wvkbd.sh ${usrbin}
cp ./wvkbd.desktop ${usrbin}


# 检查文件是否存在
if [ -f "$wfpanel" ]; then
    # 添加内容到文件的最后一行
    echo "$line_to_add" >> "$wfpanel"
    echo "Success add to $wfpanel"
else
    echo "$config_file not exist"
fi
