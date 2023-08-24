#!/bin/bash

# 安装 X-UI
bash -c "$(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)"

# 确保 X-UI 已经安装并运行
systemctl enable x-ui
systemctl start x-ui

# 修改默认配置
# 注意：这里仅作为示例。确保在你的实际环境中用正确的配置文件路径和编辑命令。
sed -i 's/"port": 54321/"port": YOUR_NEW_PORT/' /etc/x-ui/config.json
sed -i 's/"username": "admin"/"username": "YOUR_NEW_USERNAME"/' /etc/x-ui/config.json
sed -i 's/"password": "admin"/"password": "YOUR_NEW_PASSWORD"/' /etc/x-ui/config.json

# 重启 X-UI 以应用新的配置
systemctl restart x-ui
