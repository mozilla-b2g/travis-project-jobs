default: test

node_modules:
	npm install

.PHONY: test
test: node_modules
	./node_modules/.bin/mocha $(shell find . -name '*_test.js')
