SECTIONS = authors.html header.html preamble.html audience.html

all: index.html archive.html

%.html: %.html.erb *.rb $(SECTIONS) assets/css/theme.css
	erb $< > $@

assets/css/theme.css: assets/scss/theme.scss $(wildcard assets/scss/*)
	scss $< $@
