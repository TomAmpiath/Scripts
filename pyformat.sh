#! /bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage : pyformat <file name / directory>"
    exit
fi

echo ""
echo "Sorting Imports"
echo ""

/usr/bin/isort --recursive $1

echo ""
echo "Formatting Code"
echo ""

/usr/bin/black $1

echo "Done"

