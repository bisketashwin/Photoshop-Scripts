# This is not able to get all the assets list


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
    myList = []
    reader = csv.DictReader(file_obj, delimiter=',')
    for line in reader:
        #data = [['File','path']]
        myList.append((line['File'],line['path']))
    return myList

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

def fileNPath(localReport, myList,loc):
    tempData =[]
    for f in myList:
        tempData.append([f,loc])
    return tempData

def folderList(localReport, targetPaths,ldt):
    n = ldt # last modified date
    data = []
    for mypath in targetPaths:
        for root, dirs, files in os.walk(mypath) :
            myRoot = root
            dt = os.path.getmtime(root)
            if dt > n :
            # if the Folder was created after the last report generated
                FinalList = list(filter(filtNames.match, dirs)) # Name filter

                if len(FinalList) > 0:
                    tData = fileNPath(localReport,FinalList,myRoot)
                    data.extend(tData)
                    #break # FOr testing
            else:
                continue
    return data

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time

    update = False
    myLocalReport = []
    report_path = ''
    report_path = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/Reports/xha_Art_Assets_Folder_list.csv'



        # To Skip older Folder we use fallowing date
    if (update):
        ldt = os.path.getmtime(report_path)
        # date the lsit was updated or created
        # Check if there is already a CSV file of Folders list supplied by user report_path
        if os.path.isfile(report_path):
            with open(report_path) as f_obj:
                myLocalReport = csv_dict_reader(f_obj)
    else:
        #--------------year,m,d,h,m(24hours format)
        ldt = datetime(2017,7,1,0,0).timestamp()
        myLocalReport = [['File','path']]

    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']


    file_names = ['xha','HalloweenUSA']
    only_types = ['png','swf','jpg']


    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    filtNames = filterReg(file_names) # Looks for short and long mname of expansion
    filtTypes = filterReg(only_types) # Looks for jpg png swf

    targetPaths = ["/Volumes/Farm_Art/Local-vendors/LaughingDots/2017", "/Volumes/Farm_Art/Local-vendors/Pixalot", "/Volumes/Farm_Art/VendorSubmission/starart_2017"]

    data =folderList(myLocalReport,targetPaths,ldt)

    if len(data)>0:
        print("New Files Added")
        myLocalReport.extend(data)
        path = report_path
        csv_writer(myLocalReport, path)
    else:
        print("No New Files Added")

