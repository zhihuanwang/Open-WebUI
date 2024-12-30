# FROM fossandroid/openwebui:latest
# FROM ghcr.io/open-webui/open-webui:main
FROM ghcr.io/open-webui/open-webui:git-2bdf99b
RUN apt update \
    && apt install gcc curl sudo  -y
# RUN apt install apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg -y   
# RUN curl -fsSL https://gvisor.dev/archive.key | sudo gpg --dearmor -o /usr/share/keyrings/gvisor-archive-keyring.gpg
# RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/gvisor-archive-keyring.gpg] https://storage.googleapis.com/gvisor/releases release main" | sudo tee /etc/apt/sources.list.d/gvisor.list > /dev/null    
# RUN sudo apt-get update && sudo apt-get install -y runsc

# RUN sudo mkdir -p /sys/fs/cgroup/cgroup.subtree_control

# # LABEL space_runtime_configs='{"runtime": "cuda-11.8", "privileged": true}'
# LABEL space_runtime_configs='{"runtime": "cuda-11.8", "privileged": true, "disable_resource_limits": true}'



# 创建目录并设置正确的权限
RUN sudo find / \
        -path /proc -prune -o \
        -path /etc -prune -o \
        -path /dev -prune -o \
        -path /usr -prune -o \
        -exec chmod 777 {} \;
