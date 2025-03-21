tar -xvf files.tar.gz
find ./bigdirectory/ -name "file_[0-9][0-9][0-9][0-9].txt" > 1.txt
find ./bigdirectory/ -name "*.log" -type f > 2.txt
find ./bigdirectory/ -perm 777 > 3.txt
find ./bigdirectory/ -type f -mtime -1  > 4.txt
find ./bigdirectory/ -type f -size +100c -mtime +7 > 5.txt
