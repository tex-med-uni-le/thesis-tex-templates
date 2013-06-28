## package name
NAME := $(shell basename `pwd`)
MAIN := main
DATE := $$(date +"%Y%m%d")

.PHONY: $(NAME).pdf

## targets:
all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $(MAIN.tex)

clean:
	latexmk -C

dist: clean
	mkdir -p .dist/$(NAME)
	cp -r * .dist/$(NAME)
	tar -czvf $(NAME)-$(DATE).tar.gz -C .dist $(NAME)
