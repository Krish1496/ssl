'''
    Olympics Medals
    Author: Saksham Rathi
'''

from argparse import ArgumentParser as ap
import os

parser = ap()
parser.add_argument('--path', type=str, required = True)
args = parser.parse_args()

# dictionary for the data
totalData = {}

# looping through the directory
for fileName in os.listdir(args.path):
    # read the file
    with open(os.path.join(args.path,fileName),"r") as f:
        for line in f:
            data = line.strip().split("-")
            # print(data)
            if not data[0] in totalData.keys():
                totalData[data[0]] = [0,0,0]
            # loop through data of file and set the values for the data
            for i in range(3):
                totalData[data[0]][i] += int(data[i+1])

# sort as per gold medals and break ties lexicographically           
sorted_data = dict(sorted(totalData.items(), key=lambda item: (-item[1][0], item[0])))
print(sorted_data)
