
all: html pdf

html: style.css stagiaires.md
	python build.py index.html
	python build.py print.html print.html

pdf: print.html
	pandoc print.html -o stagiaires-brut.pdf -V geometry:margin=1in
