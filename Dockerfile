# FROM fossandroid/openwebui:latest
FROM ghcr.io/open-webui/open-webui:main
RUN apt update \
    && apt install gcc curl sudo  -y
# 创建目录并设置正确的权限
RUN sudo find / \
        -path /proc -prune -o \
        -path /etc -prune -o \
        -path /dev -prune -o \
        -path /usr -prune -o \
        -exec chmod 777 {} \;
