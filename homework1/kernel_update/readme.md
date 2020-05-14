# Задание 1. Обновление ядра

Необходимо обновить ядро для CentOS 7, запаковать через Packer и выложить в Vagrant Cloud

**Доп.задание:** должны работать shared folders

## Реализация

Папка packer содержит необходимые конфиги и скрипты. Для самостоятельной сборки образа досататочно выполнить команды:

```
cd packer
packer build kernel-update.json
```

В ходе сборки packer последовательно выполнит скрипты из папки [packer/scripts](https://github.com/jekys13/otus-linux/tree/master/homework1/kernel_update/packer/scripts):

* [1-kernel_update.sh](https://github.com/jekys13/otus-linux/blob/master/homework1/kernel_update/packer/scripts/1-kernel_update.sh) - добавление репозитория elrepo, установка ядра и доп.пакетов необохдимых для работы guest folders, настройка grub
* [2-shared_folders.sh](https://github.com/jekys13/otus-linux/blob/master/homework1/kernel_update/packer/scripts/2-shared_folders.sh) - монтирование VBoxGuestAdditions.iso и запуск с него установки пакетов для работы shared folders
* [3-clean.sh](https://github.com/jekys13/otus-linux/blob/master/homework1/kernel_update/packer/scripts/3-clean.sh) - очистка сборки перед запаковкой в образ

Сам образ выложен на Vagrnat Cloud: https://app.vagrantup.com/jekys/boxes/centos-7-8-kernel-5.6.12-elrepo

Для тестоирования образа достаточно выполнить команды на запуск вирутальной машины, подключение к ней и запуск скрипта из guest folder:

```
vagrant up
vagrant ssh
cd /vagrant
chmod +x test.sh && ./test.sh
```

**Версии ПО для сборки и тестов:**
* Ubuntu 19.10
* Virtualbox 6.1.6
* Vagrant 2.2.9
* Packer 1.5.6




