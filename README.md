# Первый мой проект с использованием Vagrant и Ansible
== Основан на лабораторной работе Игоря Пантюхина https://пантюхин.рф/оиб/lr9.html ==

## VirtualBox
### Установка
```bash
apt update
apt upgrade -y
apt install -y libvulkan1 libgl1 liblzf1 libqt6core6t64 libqt6dbus6t64 libqt6gui6t64 libqt6help6 libqt6printsupport6t64 libqt6statemachine6 libqt6widgets6t64 libqt6xml6t64 libtpms0 libvpx9 libx11-6 libxcb1 libxt6t64
wget -P /tmp wget https://download.virtualbox.org/virtualbox/6.1.50/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
dpkg -i /tmp/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
sudo apt install linux-headers-$(uname -r)
sudo /sbin/vboxconfig

```

## Vagrant
### Настройка прокси
Создатели Vagrant ограничили доступ к своему пректу, поэтому приходится использовать проки. Если логина и пароля нет, то всё от http:// до ip в ссылке нужно убрать
```bash
export https_proxy='http://login:password@ip:port/'
export VAGRANT_HTTP_PROXY=${http_proxy}
export VAGRANT_NO_PROXY="127.0.0.1"
```
### Установка Vagrant
Если нужна другая версия, её можно выбрать по адресу https://releases.hashicorp.com/vagrant/
```bash
wget https://releases.hashicorp.com/vagrant/2.4.3/vagrant_2.4.3-1_amd64.deb
sha256sum vagrant_2.4.3-1_amd64.deb
dpkg -i vagrant_2.4.3-1_amd64.deb
```