all: render

render: 
	quarto render ../inst/
	mkdir -p ../inst/doc && mv ../inst/docs ../inst/doc/book
	find ../inst/doc -type d -empty -delete
