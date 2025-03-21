# Write your commands here
# run with 'bash commands.sh' 

grep -Ee "[a-z]{1,}[0-9]{2} [1-4] (22b|23b)[0-9]{4}@iitb\.ac\.in submission\.sh$" collect.txt > valid.txt
cut -d' ' -f 1,3 valid.txt | cut -d'@' -f 1 | sort -t' ' -k 2.4 > sorted.txt