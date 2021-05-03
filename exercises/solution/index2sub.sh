#!/bin/bash

function ind2sub() {	
	x=$(($1%5))
	y=$(($1/5))
}

# using the function
ind2sub 13

# using with for loops
for ((i=0;i<25;i++)){
	ind2sub $i
	echo "x index = $x; y index = $y"
}

echo "----------------------"

# complecated workflows
for ((i=0;i<25;i++)){
	ind2sub $i
	if [ $x -ne 2 ]; then
		echo "x index = $x; y index = $y"
	fi
}

echo "Done"
