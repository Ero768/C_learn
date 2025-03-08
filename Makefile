build:
	gcc problem_hwf.c -o problem_hwf.out

.PHONY: test
test:
	./run_tests.sh
