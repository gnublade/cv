all: ajk-cv.pdf

%.tex: %.txt
	rst2latex --stylesheet=ajk-cv.sty $< $@

%.dvi: %.tex %.sty
	latex $<

%.ps: %.dvi %.sty
	dvips $< -o $@

%.pdf: %.tex %.sty
	pdflatex $<

clean:
	rm -f *.dvi *.ps *.pdf

fullclean: clean
	rm -f *.log *.aux 

.PNONY: clean fullclean
