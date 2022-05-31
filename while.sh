#!/bin/bash

COUNT=0

while [ $COUNT -lt 10 ]; do
	touch doc$COUNT
	let COUNT+=1
done
