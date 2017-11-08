# Docker image for pyflakes checker

[pyflakes](https://pypi.python.org/pypi/pyflakes) is a passive checker of Python programs


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pyglakes/blob/master/Dockerfile)
- [`1.6.0.1` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/1.6.0.1/Dockerfile)
- [`1.6.0` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/1.6.0/Dockerfile)

## Usage

    $ docker run --rm -v /path/to/python/code:/code eeacms/pyflakes

or

    $ docker run --rm eeacms/pyflakes https://github.com/eea/eggmonkeytest.git


See pyflakes `--help` for more options:

    $ docker run --rm eeacms/pyflakes --help

## Running in jenkins, including pull requests:

* GIT_NAME, GIT_SRC  - must be given
* GIT_BRANCH - defaults to master
* GIT_CHANGE_ID - can be empty or pull request id


    $ docker run -i --rm -e GIT_SRC="https://github.com/eea/$GIT_NAME.git" -e GIT_NAME="$GIT_NAME" -e GIT_BRANCH="$BRANCH_NAME" -e GIT_CHANGE_ID="$CHANGE_ID" eeacms/pyflakes


