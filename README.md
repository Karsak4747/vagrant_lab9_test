# Первый мой проект с использованием Vagrant и Ansible
== Основан на лабораторной работе Игоря Пантюхина https://пантюхин.рф/оиб/lr9.html ==

## VirtualBox
### Установка
```bash
apt update
apt upgrade -y
wget -P /tmp https://download.virtualbox.org/virtualbox/6.1.50/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
dpkg -i /tmp/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
apt install virtualbox-6.1
apt --fix-broken install
sudo modprobe vboxnetadp
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
wget -P /tmp https://releases.hashicorp.com/vagrant/2.4.3/vagrant_2.4.3-1_amd64.deb
sha256sum /tmp/vagrant_2.4.3-1_amd64.deb
dpkg -i /tmp/vagrant_2.4.3-1_amd64.deb
```