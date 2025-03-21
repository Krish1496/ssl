#!/bin/bash

input="$1"
touch ug23.csv ug24.csv newGrades.csv

tr -d '\r' < $input > temp.csv

part_header=$(head -1 temp.csv)
header="$part_header,grades"

echo $header > ug23.csv
echo $header > ug24.csv
> newGrades.csv
# echo $header > newGrades.csv

while IFS=',' read -r roll q1 q2 mid end x
do
    if ! [[ "$x" =~ ^[0-9]+$ ]]; then continue
    fi

    if (( x > 85 )); then g="AA"
    elif (( x > 65 )); then g="AB"
    elif (( x > 45 )); then g="BB"
    elif (( x > 35 )); then g="CC"
    else g="F"
    fi

    echo "$roll,$q1,$q2,$mid,$end,$x,$g"  >> newGrades.csv

done < temp.csv
rm temp.csv

# cat newGrades.csv
sort newGrades.csv -o newGrades.csv
grep -E "^23B" newGrades.csv | sort -t',' -k7 >> ug23.csv
grep -E "^24B" newGrades.csv | sort -t',' -k7 >> ug24.csv

rm newGrades.csv