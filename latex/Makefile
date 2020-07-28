# See LICENSE file for copyright and license details.

all: pdf clean image

pdf:
	@cd src/ && lualatex __filename__.tex
	@mv src/__filename__.pdf ./

clean:
	@rm -f src/*.{aux,log,out}

image:
	@rm -f asset/__filename__.*.png
	@python src/script/doc.py
	@rm -f asset/__filename__.png

commit:
	@git add asset/ __filename__.pdf README.md
	@git commit -m "Update __filename__ documentation and pdf file"

.PHONY: clean pdf image all
