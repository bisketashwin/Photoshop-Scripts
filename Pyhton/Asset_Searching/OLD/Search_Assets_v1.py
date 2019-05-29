
def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

def csv_dict_reader(file_obj):
    """
    Read a CSV file using csv.DictReader
    """
    reader = csv.DictReader(file_obj, delimiter=',')
    for line in reader:
        print(" ".join(line))

def regExp(myList):
    longest_first = sorted(myList, key=len, reverse=True)
    p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, longest_first))))
    return p

def onlyFileType(s):
    for elem in only_types:
        if s.endswith(elem):
            return True
    return False

def filterReg (myList):
    #intended result re.compile(".*(cat|wil)")
    s = '.*('
    first = True
    for elem in myList:
        s += elem
        if first:
            first = False
            s += '|'
    s += ')'
    return re.compile(s)



if __name__ == '__main__':
    import os
    import sys
    import csv
    import re
    import platform
    from datetime import datetime, time

        # To Skip older Folder we use fallowing date
    #----------year-month-day-hours(24hours format)-min
    n = datetime(2017,7,1,0,0).timestamp()

    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']
    data = []

    file_names = ['xbr','brazil']
    only_types = ['png','swf','jpg']


    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    filtNames = filterReg(file_names)

    filtTypes = filterReg(only_types)



    mypath = '/Volumes/Farm_Art/Local-vendors/Pixalot'

    for root, dirs, files in os.walk(mypath) :
        myRoot = root
        dt = os.path.getmtime(root)
        if dt > n :
            newList = list(filter(filtNames.match, files))
            FinalList = list(filter(filtTypes.match, newList))
            #print(len(FinalList))
            if len(FinalList) > 0:
                print(myRoot)
                print(FinalList)
            '''
            if f.search(files):
                print('Letest = ' , dt)
                print (root)
            '''
        else:
            continue
