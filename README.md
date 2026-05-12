# PyCon 2026: Shiny Dashboards

Workshop materials for [**PyCon US 2026**](https://us.pycon.org/2026/) - Long Beach, California.

📖 **Setup & workshop website**: <https://chendaniely.github.io/pycon-2026-shiny>

## Run in the cloud (no local install needed)

| Platform | Launch |
|---|---|
| GitHub Codespaces | [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/chendaniely/pycon-2026-shiny) |
| MyBinder | [![Launch on Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/chendaniely/pycon-2026-shiny/HEAD) |
| Posit Cloud | See instructions below |

### GitHub Codespaces

Click the badge above (or go to **Code → Codespaces → Create**). The devcontainer installs Python 3.12, Quarto 1.10.3, and all required packages automatically. Once ready, run an app from the terminal:

```bash
shiny run code/app-01-intro.py
```

The port will be forwarded and a browser preview will open automatically.

### MyBinder

Click the Binder badge above. First launch takes a few minutes to build the image. Once in JupyterLab, open a terminal and run:

```bash
shiny run code/app-01-intro.py --port 8888 --host 0.0.0.0
```

Use the running Jupyter server URL (replace `/lab` with `/proxy/8888/`) to view the app.

### Posit Cloud

1. Go to [posit.cloud](https://posit.cloud) and create a **New Project → From Git Repository**
2. Enter `https://github.com/chendaniely/pycon-2026-shiny`
3. Quarto is pre-installed; install Python packages in the terminal:

```bash
pip install -r requirements.txt
```

## Local setup

```bash
make venv
source .venv/bin/activate
make setup-quarto   # install Quarto extensions (one-time)
```

## Verify Installation

```bash
python test-install.py
shiny run test-install.py
```
