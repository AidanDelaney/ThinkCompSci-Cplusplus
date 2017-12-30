SVGS = $(wildcard images/*.svg)
PDFS = $(patsubst %.svg,%.pdf,${SVGS})
PNGS = $(patsubst %.svg,%.png,${SVGS})

BOOK_NAME = cpp_south_pacific
INKSCAPE = inkscape

COMMON_OPTIONS = --chapters --number-sections --standalone --toc #  --filter pandoc-fignos --chapters --number-sections --standalone --toc

all: images pdf html epub

images: ${PDFS} ${PNGS} # Make all images

images/%.pdf: images/%.svg
	@${INKSCAPE} --without-gui --export-pdf=$@ $<

images/%.png: images/%.svg
	@${INKSCAPE} --without-gui --export-png=$@ $<

pandoc_tex:
	pandoc ${COMMON_OPTIONS} -t latex --listings -o ${BOOK_NAME}.tex *.md

latex: $(BOOK_NAME).tex # Generate the PDF book output
	sed -i 's/.png}/.pdf}/g' $<
	latexmk -gg -pdf -bibtex $<

pdf: pandoc_tex latex

html: # Generate the HTML book output
	pandoc ${COMMON_OPTIONS} -t html --mathjax -o ${BOOK_NAME}.html *.md

epub: # Generate the EPUB book output
	pandoc ${COMMON_OPTIONS} -t epub --mathml -o ${BOOK_NAME}.epub *.md

help:
	@grep -h -P '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
