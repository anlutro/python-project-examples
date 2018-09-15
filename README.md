# Python project example(s)

Check out the different branches for different variations!

### Minimal example

Pre-requisites: Python 3.5 or higher and the `venv` module. On Debian/Ubuntu:

```bash
sudo apt install python3 python3-venv
```

Create a virtualenv for the project, activate it, and install the package and its dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -e . -r requirements/dev.txt
python -m myproject
```
