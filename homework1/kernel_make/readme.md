# Задание 1 (доп). Компиляция ядра

Необходимо скомпилировать ядро для CentOS 7 из исходников, запаковать через Packer и выложить в Vagrant Cloud

**Доп.задание:** должны работать shared folders

## Реализация

Папка packer содержит необходимые конфиги и скрипты. Для самостоятельной сборки образа досататочно выполнить команды:

```
cd packer
packer build kernel-make.json
```

В ходе сборки packer последовательно выполнит скрипты из папки packer/scripts:

* 1-kernel_make.sh - закачка ядра с kernel.org, компиляция, установка, настройка grub
* 2-shared_folders.sh - монтирование VBoxGuestAdditions.iso и запуск с него установки пакетов для работы shared folders
* 3-clean.sh - очистка сборки перед запаковкой в образ

Сам образ выложен на Vagrnat Cloud: https://app.vagrantup.com/jekys/boxes/centos-7-8-kernel-5.6.12-compiled

Для тестоирования образа достаточно выполнить команды на запуск вирутальной машины, подключение к ней и запуск скрипта из guest folder:

```
vagrant up
vagrant ssh
cd /vagrant
chmod +x test.sh && ./test.sh
```