INKSCAPE?=inkscape	# Inkscape (svg support)
#
#https://scaron.info/blog/makefiles-for-latex.html

FIGURES_SVG=$(wildcard svgpath/*.svg)
FIGURES_PNG=$(subst svgpath/,versions/,$(FIGURES_SVG:.svg=.png))

all:	$(FIGURES_PNG)

# Pattern rule for converting SVG to PNG
versions/%.png: svgpath/%.svg
	$(INKSCAPE) --export-filename $(@) $(<)

viewpng:
	eog $(FIGURES_PNG)

clean:  ## Clean LaTeX and output figure files
	rm -f $(FIGURES_PNG)

