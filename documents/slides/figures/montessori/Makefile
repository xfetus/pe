INKSCAPE?=inkscape	# Inkscape (svg support)

FIGURES_SVG=$(wildcard vectors/*.svg)
FIGURES_PNG=$(subst vectors/,versions/,$(FIGURES_SVG:.svg=.png))
FIGURES_PDF=$(subst vectors/,versions/,$(FIGURES_SVG:.svg=.pdf))

# Pattern rule for converting SVG to PNG and PDF
png:	$(FIGURES_PNG)
versions/%.png: vectors/%.svg
	$(INKSCAPE) --export-png $(@) $(<)

pdf:	$(FIGURES_PDF)
versions/%.pdf: vectors/%.svg
	$(INKSCAPE) --export-pdf $(@) $(<)

clean:  ##  output figure files
	rm -f $(FIGURES_PNG) $(FIGURES_PDF)
