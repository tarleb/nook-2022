TALK_FILE = talk.md

REVEALJS_TGZ = https://github.com/hakimel/reveal.js/archive/4.4.0.tar.gz

talk.html: $(TALK_FILE) paper.bib reveal.js \
		filters/graphviz.lua
	pandoc \
		--standalone \
		--mathml \
	  --citeproc \
		--from=markdown \
		--to=revealjs \
		--slide-level=2 \
		--variable=theme:serif \
		--variable=revealjs-url:reveal.js \
		--lua-filter=filters/graphviz.lua \
	  --bibliography=paper.bib \
	  --extract-media=media \
		--output=$@ \
		$<

reveal.js:
	mkdir -p reveal.js
	curl --location -Ss $(REVEALJS_TGZ) | \
		tar zvxf - -C $@ --strip-components 1

clean:
	rm -f talk.html

watch:
	find . -type f \! -path './.git/*' \! -path './reveal.js/*' | entr make

.PHONY: clean watch
