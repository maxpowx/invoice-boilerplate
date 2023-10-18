TEX_PROCESSOR = pandoc --pdf-engine=xelatex --from=commonmark+yaml_metadata_block
TEX_TEMPLATE = template.tex
FLAGS = --verbose --trace=true #--log=$(TEX_TEMPLATE).log #--fail-if-warnings 
DEFAULT_YAML = example.yml

# substitute ".yml" for output -> src https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
yml ?= $(DEFAULT_YAML)
OUTPUT = $(subst .yml,,$(yml)).pdf

.PHONY: build
build : 
	make clean
	make with $(yml)

.PHONY: clean
clean :
	rm -f *.pdf
	rm -f template.log template.fls template.aux template.fdb_latexmk
	rm -f tmp.yml debug.tex

# with custom yaml file
.PHONY: with
with :
# https://pandoc.org/MANUAL.html#extension-yaml_metadata_block
	(echo '---\n#yaml-start' && cat internationalization.yml $(yml) && echo '\n#yaml-end\n---') > tmp.yml
	if [ -f $(OUTPUT) ]; then echo "file $(OUTPUT) already exists, delete it to regenerate" && exit 1; fi
	$(TEX_PROCESSOR) tmp.yml -o debug.tex --template=$(TEX_TEMPLATE) $(FLAGS)
	$(TEX_PROCESSOR) tmp.yml -o $(OUTPUT) --template=$(TEX_TEMPLATE) $(FLAGS)
	rm -f tmp.yml 
	rm -f debug.tex
