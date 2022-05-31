#!/bin/bash

COUNT=20

until [ $COUNT -lt 10 ]; do
	touch doc$COUNT
	let COUNT-=1
done
