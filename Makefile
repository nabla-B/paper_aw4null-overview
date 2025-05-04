PDF       = aw4null-overview-paper.pdf
SRCDIR    = src
SRC       = $(SRCDIR)/main.tex
TEXSRCS   = $(wildcard $(SRCDIR)/**/*.tex)

LATEXMK_OPTS = -pdf \
               -interaction=nonstopmode \
               -usepretex="\PassOptionsToPackage{draft}{graphicx}" \
               -pdflatex="pdflatex %O %S" \
               -output-directory=build

.PHONY: all draft clean

all: $(PDF)

$(PDF): $(TEXSRCS)
	latexmk $(LATEXMK_OPTS) $(SRC)

draft: $(TEXSRCS)
	latexmk -f -gg $(LATEXMK_OPTS) $(SRC)

clean:
	latexmk -c $(SRC)
	rm -rf build
