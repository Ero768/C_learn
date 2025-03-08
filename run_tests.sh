#!/bin/bash

PROGRAM="./problem_hwf.out"
for i in {1..8}; do INPUT_FILE="test/input$i.test"
	OUTPUT_FILE="test/output$i.test"
	PROGRAM_OUTPUT=$($PROGRAM < "$INPUT_FILE")
	OUTPUT_TEST=$(cat "$OUTPUT_FILE")
	if [ "$PROGRAM_OUTPUT" = "$OUTPUT_TEST" ];then
		echo -e "Test $i: \033[1;32mPASSED\033[0m"
	else 
 		echo -e "Test $i: \033[1;31mFAILED\033[0m"
	fi
done
