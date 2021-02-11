start: run

install:
	/usr/bin/python3.9 -m venv pyenv
	pyenv/bin/python3.9 -m pip install --upgrade pip
	pyenv/bin/pip install -r requirements-dev.txt;

run:
	echo "missing implemeting"

ipython:
	pyenv/bin/pip install jedi==0.17.2
	cd src;  ../pyenv/bin/ipython

clean-all: clean clean-env

clean:
	find . -type d -name '__pycache__' -exec rm -rf {} \; || exit 0
	find . -type f -iname '*.pyc' -delete || exit 0

clean-env:
	rm -rf pyenv;

test:
	pyenv/bin/pytest -vv


.PHONY: install start clean