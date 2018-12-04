run:
	docker run \
		--rm \
		-it \
    -v `pwd`:/gs \
		-w /gs \
		michaelneu/ghostpcl

build:
	docker build \
		-t michaelneu/ghostpcl \
		.

clean:
	docker rmi michaelneu/ghostpcl
