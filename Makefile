.PHONY: build, watch, clean

build:
	pug pug/*.pug -p include -b . -o .

watch:
	pug pug/*.pug -p include -b . -o . -P -w

clean:
	rm *.html
