.PHONY: render preview publish venv clean-venv setup-quarto

VENV := .venv

venv:
	uv venv $(VENV)
	uv pip install --python $(VENV) -r requirements.txt

clean-venv:
	rm -rf $(VENV)

render:
	quarto render website

preview:
	quarto preview website

publish:
	quarto publish gh-pages website

setup-quarto:
	cd website && quarto add coatless-quarto/embedio --no-prompt
	cd website && quarto add quarto-ext/shinylive --no-prompt
