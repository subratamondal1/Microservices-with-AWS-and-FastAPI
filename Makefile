install:
	# install commands
	pip install --upgrade pip && pip install -r requirements.txt
format:
	# format code
lint:
	# flake8 or pylint
test:
	# test
deploy:
	# deploy
all: install format lint test deploy

install-local:
	# use this to work with poetry in your local environment, github actions were throwing error
	poetry install
