install:
	# install commands
	pip install --upgrade pip && pip install -r requirements.txt && pip install poetry && poetry install --no-root
format:
	# format code
lint:
	# flake8 or pylint
test:
	# test
deploy:
	# deploy
all: install format lint test deploy