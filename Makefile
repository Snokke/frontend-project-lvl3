install: install-deps install-flow-typed

develop:
	npx webpack-dev-server

install-deps:
	npm install

build:
	rm -rf dist
	NODE_ENV=production npx webpack

test:
	npm test

lint:
	npx eslint .

publish:
	npm publish

surge:
	rm -rf dist
	NODE_ENV=production npx webpack
	surge --domain rss-reader-snokke.surge.sh dist

.PHONY: test
