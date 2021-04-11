
run: build
	docker run -it x

build:
	./Dockerfile -t x

clean:
	find . -name '*~' | xargs rm -fr
