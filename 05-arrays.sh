#!/bin/bash

FROUTS=("apple" "mango" "banana")
echo "this is an array :: ${FROUTS[@]}"
echo "only particular array:: ${FROUTS[1]}"
echo "first array value:: ${FROUTS[0]}"