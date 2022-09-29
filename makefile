TEX_PROCESSOR = pandoc
TEX_TEMPLATE = template.tex
FLAGS = --latex-engine=xelatex
DEFAULT_YAML = example.yml

# substitute ".yml" for output -> src https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
yml ?= $(DEFAULT_YAML)
OUTPUT = $(subst .yml,,$(yml)).pdf

.PHONY: build
build : 
	make with $(yml)

.PHONY: clean
clean :
	rm *.pdf

# with custom yaml file
.PHONY: with
with :
	cat internationalization.yml $(yml) footnote.yml > tmp.yml
	if [ -f $(OUTPUT) ]; then echo "file $(OUTPUT) already exists, delete it to regenerate" && exit 1; fi
	$(TEX_PROCESSOR) tmp.yml -o debug.tex --template=$(TEX_TEMPLATE) $(FLAGS)
	$(TEX_PROCESSOR) tmp.yml -o $(OUTPUT) --template=$(TEX_TEMPLATE) $(FLAGS)
	rm tmp.yml