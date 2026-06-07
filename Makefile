.PHONY: deps lint test run

deps:
	pip install --upgrade pip
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	flake8 hello_world test

test:
	pytest --verbose -s

run:
	python hello_world/main.py