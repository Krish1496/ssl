grep -o -E "#.*" input.txt > hashtags.txt
grep -E "#" input.txt | cut -d '|' -f 3 | cut -d '-' -f 2 > pop_counts.txt
grep -E "#" input.txt | paste -d ',' hashtags.txt pop_counts.txt | sort -nr -t',' -k2 > output.txt