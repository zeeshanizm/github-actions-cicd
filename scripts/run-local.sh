#!/usr/bin/env bash
set -euo pipefail
python -m pip install -r requirements.txt
ruff check app tests
python -m pytest -v
python -m app.main
