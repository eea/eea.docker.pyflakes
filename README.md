# Docker image for pyflakes checker

[pyflakes](https://pypi.python.org/pypi/pyflakes) is a passive checker of Python programs


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pyglakes/blob/master/Dockerfile)
- [`1.6.0` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/1.6.0/Dockerfile)

## Usage

    $ docker run --rm -v /path/to/python/code:/code eeacms/pyflakes

or

    $ docker run --rm eeacms/pyflakes https://github.com/eea/eggmonkeytest.git


See pyflakes `--help` for more options:

    $ docker run --rm eeacms/pyflakes --help
