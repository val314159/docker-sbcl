
run: build
	docker  run -it x

build:
	./Dockerfile -t x

run2: build2
	docker  run -it x2

exec2: build2
	docker exec -it x2

build2:
	./d -t x2

clean:
	find . -name '*~' | xargs rm -fr
