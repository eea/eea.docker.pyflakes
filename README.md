# Docker image for pyflakes checker

[pyflakes](https://pypi.python.org/pypi/pyflakes) is a passive checker of Python programs


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/master/Dockerfile)

## Usage

```console
$ docker run --rm -v /path/to/python/code:/code eeacms/pyflakes
```

See pyflakes `--help` for more options:

```console
$ docker run --rm eeacms/pyflakes --help
```
