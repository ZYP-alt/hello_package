# hello-package

A minimal Python package scaffold with GitHub Actions CI/CD, code style enforcement, automated testing, and publish automation.

## Quick start

1. Create and activate a virtual environment:

```bash
python -m venv .venv
source .venv/Scripts/activate  # Windows
# or
source .venv/bin/activate      # macOS / Linux
```

2. Install development dependencies:

```bash
python -m pip install --upgrade pip
python -m pip install .[dev]
```

3. Run formatting, linting, and tests:

```bash
python -m black .
python -m isort .
python -m flake8 .
python -m pytest
```

## GitHub Actions

- `ci.yml`: runs formatting checks, linting, and tests on pushes and pull requests.
- `release.yml`: builds and publishes the package to PyPI on a GitHub release or manual dispatch.

## Publish package

1. Create a PyPI API token and add it to repository secrets as `PYPI_API_TOKEN`.
2. Create a release tag:

```bash
git tag v0.1.0
git push origin main --tags
```

3. Publish via GitHub release or run the release workflow manually.
