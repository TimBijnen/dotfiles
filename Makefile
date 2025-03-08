.DEFAULT_GOAL:=help
.PHONY: help

#: list all targets
help:
	@grep -B1 -E "^[a-zA-Z0-9_-]+\:([^\=]|$$)" Makefile | grep -v -- -- | sed 'N;s/\n/###/' | sed -n 's/^#: \(.*\)###\(.*\):.*/\2###\1/p' | column -t  -s '###'


#: Clean install mac
install:
	sh ./install.sh
