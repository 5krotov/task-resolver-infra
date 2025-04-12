# Infra

Внутренние скрипты task-resolver, отвечающие за настройку сервера, автоматики и
прочие тулзы.

## Auto update submodules

Сейчас подмодули в [task-resolver](https://github.com/5krotov/task-resolver)
обновляются раз в день по расписанию либо каждый раз, когда вы пушите что-то в
основной репозиторий.

Однако, если вы пользуетесь этим репозиторием локально, вам может быть
полезен скрипт [update-task-resolver.sh](./tools/update-task-resolver.sh).
Замените в нём `main_repo_path` на верный абсолютный путь и переместите файл в
`~/.local/bin/`.

Теперь каждый раз, когда вам нужно обновить изменения в основной репе, просто
выполните:

```bash
update-task-resolver.sh  # теперь это валидная команда вашего терминала
```
