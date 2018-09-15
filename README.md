# Python project example(s)

Check out the different branches for different variations!

### `pyproject.toml` with Poetry

`setup.py` sucks. A replacement is being worked on in [PEP518](https://www.python.org/dev/peps/pep-0518/), and there are tools out there to work with them, the most promising being [Poetry](https://poetry.eustace.io/).

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip setuptools poetry
poetry develop
```
