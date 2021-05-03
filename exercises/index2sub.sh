#!/bin/bash

function ind2sub() {	
	# This function converts a single dimentional index into 
	# a 2 dimensional index (5 x 5)

	## Way to call the funcition : ind2sub 55
	x=$(($1%5))
	y=$(($1/5))
}

## Write your solution here

echo "Done"
