# joshwhatk/pip

Python's pip in a docker container for easy `pip install` when you just can’t seem to get `pip` installed.

1. Run `docker run --rm -it -v $(pwd)/opt:/opt joshwhatk/pip`
2. Install all of your things, e.g. `pip install virtualenv`
3. Run `which virtualenv`
4. Move all of the executables into `/opt`.
    - e.g. `mv /usr/bin/virtualenv /opt/`
5. Exit from the container.
6. Move the executables from `$(pwd)/opt` into `/usr/local/bin` and you are good to go!
