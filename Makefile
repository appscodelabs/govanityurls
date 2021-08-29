.PHONY: run
run:
	hugo server

.PHONY: gen
gen:
	rm -rf public
	hugo --minify

.PHONY: release
release: gen
	firebase use default
	firebase deploy
