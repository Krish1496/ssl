mkdir secured_logs
touch biggest_secret.txt

cd vought_logs
cp $(find -type f -name "*.txt") ../secured_logs

cd ..
mkdir -p allFiles
cp $(find vought_logs -type f) ./allFiles
ls -RS1 allFiles/ | tail +2 | head -n1 | xargs find vought_logs/ -type f -name > biggest_secret.txt
rm -rf allFiles/