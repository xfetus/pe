INKSCAPE?=inkscape	# Inkscape (svg support)
#References
#https://scaron.info/blog/makefiles-for-latex.html

FIGURES_SVG=$(wildcard vectors/*.svg)
FIGURES_PNG=$(subst vectors/,versions/,$(FIGURES_SVG:.svg=.png))
FIGURES_PDF=$(subst vectors/,versions/,$(FIGURES_SVG:.svg=.pdf))

#all:	$(FIGURES_PNG) #$(FIGURES_PDF)
all:	$(FIGURES_PNG)

# Pattern rule for converting SVG to PNG
versions/%.png: vectors/%.svg
	$(INKSCAPE) --export-png $(@) $(<)

versions/%.pdf: vectors/%.svg
	$(INKSCAPE) --export-pdf $(@) $(<)

viewpng:
	eog $(FIGURES_PNG)

viewpdf:
	evince $(FIGURES_PDF)

clean:  ##  output figure files
	rm -f $(FIGURES_PNG) $(FIGURES_PDF)
