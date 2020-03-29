# https://github.com/tulir/mautrix-telegram

runtime:
	python3 -m venv pyenv

checkout:
	git@github.com:tulir/mautrix-telegram.git

install:	runtime checkout
	. pyenv/bin/activate
	pip3 install --upgrade mautrix-telegram[all]

install-config:
	cp -u mautrix-telegram/mautrix_telegram/example-config.yaml config.yaml
