default: clean package

.PHONY: clean
clean:
	rm -rf dist
	rm -rf rate_limiter_py.egg-info
	rm -rf .tox
	rm -rf pylint.out

.PHONY: test
test:
	tox -e pytest || true

.PHONY: check
check:
	tox -e pylint || true

.PHONY: package
package:
	python setup.py sdist

.PHONY: install
install:
	python setup.py install
