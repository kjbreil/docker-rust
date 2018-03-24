NS = kjbreil

REPO = rust-server

PORTS = -p 28016:28016/tcp -p 28015:28015/tcp -p 28015:28015/udp

.PHONY: 

default: build push

build:
	docker build -t $(NS)/$(REPO) .

clean:
	docker build --no-cache -t $(NS)/$(REPO) .

shell:
	docker run --rm --name lgsm-test -it $(NS)/$(REPO) /bin/bash

run:
	docker run --rm $(PORTS) --name lgsm-test $(NS)/$(REPO)

push:
	docker push $(NS)/$(REPO)

