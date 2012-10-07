all: ajk-cv.pdf

%.pdf %.tex: %.rst head.sty body.sty default.latex
	pandoc -f rst $< -o $@ --latex-engine=xelatex -H head.sty -B body.sty --template default.latex

clean:
	rm -f *.pdf

fullclean: clean
	rm -f *.log *.aux 

.PNONY: clean fullclean
