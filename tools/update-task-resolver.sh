#!/bin/bash
# 
# Подмодули в task-resolver обновляются раз в день по расписанию либо
# каждый раз, когда вы пушите что-то в основной репозиторий.
# 
# Однако, если вы пользуетесь этим репозиторием локально, вам может быть
# полезен этот скрипт. Замените в нём main_repo_path на верный абсолютный путь
# и переместите файл в ~/.local/bin/.
# 
# Теперь каждый раз, когда вам нужно обновить изменения в основной репе, просто
# выполните из любого места:
# 
# $ update-task-resolver.sh  # теперь это валидная команда вашего терминала

main_repo_path="<absolute-path-to-main-repo>"

cd $main_repo_path

git pull
git submodule update --remote --merge
git add .
git commit -m "Update submodules"
git push
