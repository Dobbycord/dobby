# Dobby

![Python](https://img.shields.io/badge/python-3.10.5-4B8BBE.svg)
[![discord](https://img.shields.io/badge/discord-2.0.0a-7289da.svg)](https://github.com/Rapptz/discord.py)
![Datenbank](https://img.shields.io/badge/MongoDB-5.0.7-2b531d.svg)
[![Styling](https://img.shields.io/badge/styling-black-000000.svg)](https://github.com/ambv/black)
![Formatting](<https://img.shields.io/badge/formatting-pep8-FFD43B.svg>)

___

## Setup

### Docker

run the `docker-compose.yml` from this repository

```bash
docker-compose up -d dobby

#SWARM
docker stack deploy --compose-file docker-compose.yml dobby
```

### Database

A mongodb is needed to store information like levels.

You can create a free [mongodb](https://www-cloud.mongodb.com) or run a local _(maybe also in docker)_
___

## Development

- install [git](http://git-scm.com/downloads)
- install [python3.10.5](https://www.python.org/downloads/)

```bash
#upgrade pip
python -m pip install --upgrade pip

#install need packages
pip install -r requirements.txt

#start the bot
python -m bot

#set codestyle to black
python -m black . --line-length=120

#pep8
python -m pyflakes .
```

## Translation

```bash
#extract strings from source files
python setup.py extract_messages
```

1. Open `base.pot` on Poedit
2. Translate it to needed language.
