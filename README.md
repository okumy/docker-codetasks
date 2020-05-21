# docker-codetasks

Docker image for running Python code tasks (exercices).

## Usage

```dockerfile
FROM pylotcode/docker-codetasks:1.0.0
```

## Developement

### Build an image

```bash
make build
```

### Build an image of specific tag

```bash
make TAG=1.0.0 build
```

### Run something (for example `pytest help`)

```bash
make ARGS="python -m pytest --help" run
```
