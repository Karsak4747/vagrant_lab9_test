#!/bin/bash
# Создание пользователя
sudo useradd -m -d /home/sit -s /bin/bash sit
sudo echo -e "sit\nsit\n" | passwd sit
sudo usermod -aG sudo sit
su sit
mkdir -p /home/sit/.ssh
echo "ssh-rsa " >> /home/sit/.ssh/authorized_keys 