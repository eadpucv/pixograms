
.PHONY: css

font:
	grunt webfont

zip-icons:
	zip -r -X downloads/icons.zip icons

dist:
	make font
	rm downloads/icons.zip
	make zip-icons