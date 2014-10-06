
.PHONY: css
.PHONY: less

font:
	grunt webfont

zip-icons:
	zip -r -X download/icons.zip icons

zip-webfont:
	zip -r -X download/pix-webfont.zip css
	zip -r -X download/pix-webfont.zip fonts
	zip -r -X download/pix-webfont.zip index.html

css:
	lessc less/compiler-pix.less css/pix-webfont.css --clean-css
	lessc less/compiler-html.less style/style.css --clean-css
	
dist:
	make font
	make zip-icons
	make zip-webfont
	mv pix.html index.html
	make css