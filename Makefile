# Last updated file
NAME=$(shell ls -t *.scad | sed 's/\.scad$$//' | head -n 1 | tr --delete ' ')
FILENAME=dist/$(NAME).stl

.PHONY: preview
preview:
	openscad --hardwarnings $(NAME).scad

.PHONY: build
build: $(FILENAME)

.PHONY: $(FILENAME)
$(FILENAME): $(NAME).scad
	mkdir -p dist
	openscad --hardwarnings -o $(FILENAME) $(NAME).scad
