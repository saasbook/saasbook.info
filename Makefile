all: index.html archive.html assets/css/theme.css

%.html: %.html.erb *.rb
	erb $< > $@

assets/css/theme.css: assets/scss/theme.scss $(wildcard assets/scss/*)
	scss $< $@
