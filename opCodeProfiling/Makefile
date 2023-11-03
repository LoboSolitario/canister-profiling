include ../*.mk

.PHONY: all motoko rust build perf

all: build perf

motoko:
	$(call build,motoko)

build: motoko 

perf:
	$(call perf,opCodeProfiling,perf.sh)
