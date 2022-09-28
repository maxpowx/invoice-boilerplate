TEX = pandoc
src = template.tex details.yml
FLAGS = --latex-engine=xelatex

tex_src = template.tex
# substitute ".yml" for output -> src https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
ymlpdf = $(subst .yml,,$(yml)).pdf

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf

# with custom yaml file
  # my pull request: https://github.com/mrzool/invoice-boilerplate/pull/13
.PHONY: with
with :
	cat header.yml $(yml) footnote.yml > temp.yml
	if [ -f $(ymlpdf) ]; then echo "file $(ymlpdf) already exists, delete it to regenerate" && exit 1; fi
	$(TEX) temp.yml -o debug.tex --template=$(tex_src) $(FLAGS)
	$(TEX) temp.yml -o $(ymlpdf) --template=$(tex_src) $(FLAGS)
	rm temp.yml
