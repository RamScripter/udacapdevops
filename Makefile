# Instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile to pass hadolint
# coreapp.py to pass pylint

setup:
	# Create python virtualenv
	python3 -m venv ~/.clouddevops

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt &&\
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint

test:
#	# Additional, optional, tests could go here
#	# python -m pytest -vv 
#	# python -m pytest --nbval

lint:
	# This is linter for Dockerfiles
	./hadolint Dockerfile
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 coreapp.py

all: install lint test