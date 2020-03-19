.PHONY: install_deps exec

DEPS_FILE=deps.txt
DEPS=$(shell awk '{ printf("%s ", $$1) }' ${DEPS_FILE})

FENNEL=./lua_modules/bin/fennel  -l set_paths.fnl 

install_deps:
	for dependency in ${DEPS} ; do \
		luarocks install --tree lua_modules $$dependency ; \
	done

exec:
	$(FENNEL) main.fnl

server:
	$(FENNEL) server.fnl

client:
	$(FENNEL) client.fnl
