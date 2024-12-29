# FROM fossandroid/openwebui:latest
FROM ghcr.io/open-webui/open-webui:main
# 创建目录并设置正确的权限
RUN chmod 777 /root
