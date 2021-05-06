#!/usr/bin/env python3
import csv
import urllib.request
import numpy as np

import matplotlib.pyplot as plt
import pandas as pd
import matplotlib.dates as mdates

url = 'https://covid19-osaka.info/data/summary.csv'
urllib.request.urlretrieve(url,'covid19-osaka.csv')


fig = plt.figure()


array_new = []
array_sum = []

with open('covid19-osaka.csv', encoding="shift-jis") as csvfile:
    reader = csv.reader(csvfile, delimiter=',', quotechar='"')
    sum = 0
    next(csv.reader(csvfile))
    for row in reader:
        array_new.append(row[2])
        sum += int(row[2])
        array_sum.append(sum)

plt.plot(array_sum,array_new)
#両対数軸としたグラフ
plt.xscale("log")
plt.yscale("log")
plt.xlim(1,1e+06)
plt.ylim(1, 10000)
plt.xlabel("Total Confirmed Cases")
plt.ylabel("New Confirmed Cases(day)")

fig.savefig("covid19-osaka.png")
