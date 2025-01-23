SHELL = /bin/bash
export PATH := bin:${PATH}

all:
	checkmodule -m -o compatibility.mod compatibility.te
	semodule_package -o compatibility.pp -m compatibility.mod

install:
	semodule -i compatibility.pp

clean:
	rm compatibility.pp compatibility.mod
