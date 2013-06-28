## package name
NAME := foo
MAIN := main
DATE := $$(date +"%Y%m%d")

.PHONY: $(NAME).pdf

## targets:
all: $(NAME).pdf

$(NAME).pdf: $(MAIN).tex
	echo $(NAME)
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $(MAIN.tex)

clean:
	latexmk -C

dist: clean
	mkdir -p .dist/$(NAME)
	cp -r * .dist/$(NAME)
	tar -czvf $(NAME)-$(DATE).tar.gz -C .dist $(NAME)
