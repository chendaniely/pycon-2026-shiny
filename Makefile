.PHONY: render preview publish venv clean-venv setup-quarto

VENV := .venv

venv:
	uv venv $(VENV)
	uv pip install --python $(VENV) -r requirements-full.txt

clean-venv:
	rm -rf $(VENV)

render:
	rm -rf website/.quarto/
	quarto render website

preview:
	rm -rf website/.quarto/
	quarto preview website --port 12345

publish:
	rm -rf website/.quarto/
	quarto publish gh-pages website

setup-quarto:
	cd website && quarto add coatless-quarto/embedio --no-prompt
	cd website && quarto add quarto-ext/shinylive --no-prompt
	cd website && quarto add coatless-quarto/custom-callout --no-prompt
	cd website && quarto add EmilHvitfeldt/quarto-revealjs-chat-bubbles --no-prompt

