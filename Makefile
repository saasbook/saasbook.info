all: index.html assets/css/theme.css

%.html: *.html.erb
	erb $< > $@

assets/css/theme.css: assets/scss/theme.scss $(wildcard assets/scss/*)
	scss $< $@
