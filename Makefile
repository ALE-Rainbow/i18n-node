test:
	mocha --exit

cover:
	istanbul cover ./node_modules/mocha/bin/_mocha

hint:
	jshint --verbose .

examples:
	for example in examples/*/test.js ; do \
		mocha $$example; \
	done

publish:
	npm publish -f  # Please note the -f option to force the publication (even if the version is not modified)

all: test examples hint

.PHONY: test examples
