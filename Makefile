
.PHONY: css
.PHONY: less

font:
	grunt webfont

zip-icons:
	zip -r -X download/icons.zip icons

css:
	lessc less/compiler-pix.less css/pix-webfont.css --clean-css
	lessc less/compiler-html.less style/style.css --clean-css
	
dist:
	make font
	make zip-icons
	mv pix.html index.html
	make css