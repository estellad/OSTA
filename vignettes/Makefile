all: render cleanup

render: 
	quarto render ../inst/
	mkdir -p ../inst/doc && mv ../inst/docs ../inst/doc/book

cleanup: 
	find ../inst/doc -depth -type d -empty -delete
