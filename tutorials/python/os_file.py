import os

print(os.scandir())
print(os.listdir(),end='\n\n')


bashList = os.listdir("../Bash")
bashScan = os.scandir("../Bash")
print(f"Files in the ./bash folder(list) : {bashList}")
print(f"Files in the ./bash folder(scan) : {bashScan}")

for entry in bashList:
    print(entry)

for entry in bashScan:
    print(entry)