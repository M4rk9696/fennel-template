### Fennel Template

> A project template to getting started with Fennel

## Setup

- `make install_deps`

## Installing libraries

- `luarocks install --tree lua_modules <package-name>`
- Add the dependency to `deps.txt`

## Running the project

`fennel -l set_paths.fnl main.fnl` or `make exec`