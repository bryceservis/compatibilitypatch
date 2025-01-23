SHELL = /bin/bash
export PATH := bin:${PATH}

all:
	checkmodule -m -o compatability.mod compatability.te
	semodule_package -o compatability.pp -m compatability.mod

install:
	semodule -i compatability.pp
