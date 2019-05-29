import os
import platform
from datetime import datetime, time

t = datetime.strptime('Jun 1, 2017 @ 00:00:00 UTC',"%b %d, %Y @ %H:%M:%S %Z")
#n = time.time.mktime(t)*1000
#----------year-month-day-hours(24hours format)-min
n = datetime(2017,7,1,0,0).timestamp()
print (t)
print (n)

mypath = '/Volumes/Farm_Art/Local-vendors/Pixalot'

for root, dirs, files in os.walk(mypath) :
    dir_path = os.path.join(root)
    dt = os.path.getmtime(dir_path)
    if dt > n:
        print('Letest = ' , dt)
        print (root)


