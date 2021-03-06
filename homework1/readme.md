# Задание 1. Обновить ядро в базовой системе

**Цель:** Студент получит навыки работы с Git, Vagrant, Packer и публикацией готовых образов в Vagrant Cloud.

**Методичка:** https://github.com/dmitry-lyutenko/manual_kernel_update/blob/master/manual/manual.md

По данной методичке требуется выполнить необходимые действия. Полученный в ходе выполнения ДЗ Vagrantfile должен быть залит в ваш репозиторий. Для проверки ДЗ необходимо прислать ссылку на него.

Для выполнения ДЗ со * и ** вам потребуется сборка ядра и модулей из исходников.

**Критерии оценки:** Основное ДЗ - в репозитории есть рабочий Vagrantfile с вашим образом.

**ДЗ со звездочкой:** Ядро собрано из исходников

**ДЗ с двумя звездочками:** В вашем образе нормально работают VirtualBox Shared Folders

Задание выполнено в двух вариантах (лежат в подпапках):

* [kernel_update](https://github.com/jekys13/otus-linux/tree/master/homework1/kernel_update) - обновление ядра через установку нового из репозитория elrepo
* [kernel_make](https://github.com/jekys13/otus-linux/tree/master/homework1/kernel_make) - компиляция ядра с kernel.org

В обоих вариантах работаю shared folders
