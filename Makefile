all: clean install test

install:
	@pip install -e car/ && \
	pip install -e car.wheel.tire/ && \
	pip install -e car.wheel.spoke/

clean:
	@SITE=`python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`; \
	rm -f $$SITE/car*

test:
	@pushd tests; \
	echo "TEST 1"; ./test.py; \
	echo "TEST 2"; ./test2.py;
