
all: html pdf

html: style.css stagiaire.md
	python build.py index.html
	python build.py print.html print.html

pdf: print.html
	pandoc print.html -o stagiaire-brut.pdf -V geometry:margin=1in
