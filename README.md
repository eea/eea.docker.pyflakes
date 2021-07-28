# Docker image for pyflakes checker

[pyflakes](https://pypi.python.org/pypi/pyflakes) is a passive checker of Python programs



## Supported tags and respective `Dockerfile` links

### For python 2

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.pyglakes/blob/master/Dockerfile)
- [`2.3.1` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/2.3.1/Dockerfile)

### For python3

- [`py3` (*Dockerfile*)](https://github.com/eea/eea.docker.pyglakes/blob/py3/Dockerfile)
- [`2.3.1-py3` (*Dockerfile*)](https://github.com/eea/eea.docker.pyflakes/blob/2.3.1-py3/Dockerfile)


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


