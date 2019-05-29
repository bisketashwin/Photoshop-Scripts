
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

def fileNPath(myList,loc):
    tempData =[]
    for f in myList:
        tempData.append([f,loc])
    return tempData



if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time

    report_path = '/Users/anandihalli/Documents'

        # To Skip older Folder we use fallowing date
    #----------year-month-day-hours(24hours format)-min
    n = datetime(2017,7,1,0,0).timestamp()

    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']
    data = [['File','path']]

    file_names = ['xbr','brazil']
    only_types = ['png','swf','jpg']


    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    filtNames = filterReg(file_names) # Looks for short and long mname of expansion
    filtTypes = filterReg(only_types) # Looks for jpg png swf

    targetPaths = ["/Volumes/Farm_Art/Local-vendors/LaughingDots/2017", "/Volumes/Farm_Art/Local-vendors/Pixalot", "/Volumes/Farm_Art/VendorSubmission/starart_2017"]

    for mypath in targetPaths:
        for root, dirs, files in os.walk(mypath) :
            myRoot = root
            dt = os.path.getmtime(root)
            if dt > n :
                newList = list(filter(filtNames.match, files)) # Name filter
                FinalList = list(filter(filtTypes.match, newList)) # Type filter

                if len(FinalList) > 0:
                    tData = fileNPath(FinalList,myRoot)
                    data.extend(tData)
                    #break # FOr testing
            else:
                continue

    path = report_path+"/"+file_names[0]+"_Art_Assets_list.csv"
    csv_writer(data, path)
