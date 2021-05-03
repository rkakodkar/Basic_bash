#!/bin/bash

function ind2sub() {	
	x=$(($1%5))
	y=$(($1/5))
}

for ((i=0;i<25;i++)){
	ind2sub $i
	echo "x index = $x; y index = $y"
}

echo "Done"
