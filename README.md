# pre-commit-golang
Golang pre-commit hooks for http://pre-commit.com/

## install

You need first to install [pre-commit](https://pre-commit.com/#install). Then, install pre-commit into your git repo

```
pre-commit install
pre-commit install --hook-type commit-msg
```

## Usage

Add a file named `.pre-commit-config.yaml` into the root directory of your repository

```yaml
repos:
  - repo: https://github.com/plvhx/pre-commit-golang
    rev: main
    hooks:
      - id: commitmsg-check # validate commit message based on git karma rule.
        stages:
          - commit-msg
      - id: go-fmt-import
      - id: go-vet
      - id: go-lint
      - id: go-unit-tests
      - id: gofumpt # requires github.com/mvdan/gofumpt
      - id: go-err-check # requires github.com/kisielk/errcheck
      - id: go-static-check # install https://staticcheck.io/docs/
      - id: golangci-lint # requires github.com/golangci/golangci-lint
        args: [--config=.github/linters/.golangci.yml] # optional
```
