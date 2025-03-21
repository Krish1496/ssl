# mkdir -p outputs outputs1
# find ./inputs -name "*.txt" -exec cp {} ./outputs/ \;
# find ./inputs -name "*.txt" -exec cp {} ./outputs1/ \;
# cd outputs1
# mv .file3.txt file0.txt
# mv file9.txt file90.txt
# cat -n *.txt > ../cat.txt
# find . -type f -exec cat {} + | grep -cve '^\s*$' > ../lines.txt


mkdir -p outputs
find -type f \( -name "*.txt" -o ".*.txt" \) -exec cp {} outputs/ \;
ls outputs/*.txt | sort | cat -n > ./cat.txt
grep -vh "^[[:space:]]*$" outputs/*.txt | wc -l > ./lines.txt