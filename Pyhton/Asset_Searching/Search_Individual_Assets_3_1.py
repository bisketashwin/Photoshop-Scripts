
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
        myList.append((line['File']))
    return myList

def regExp(myList):
    longest_first = sorted(myList, key=len, reverse=True)
    print(myList)
    p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, myList))))
    return p


def onlyFileType(s):
    for elem in only_types:
        if s.endswith(elem):
            return True
    return False

def filterReg (myList):
    #intended result re.compile(".*(cat|wil)")
    s = '.*('
    n = 1
    l = len(myList)
    for elem in myList:
        s += elem
        if n < l:
            n +=1
            s += '|'
    s += ')'
    p = re.compile(s)
    return p

def fileNPath(localReport, myList,loc):
    tempData =[]
    for f in myList:
        tempData.append([f,loc])
    return tempData

def find(l, elem):
    for row, i in enumerate(l):
        if elem in i[0]:
            return i
    return -1

def folderList(localReport, targetPaths,ldt,searchType):
    n = ldt # last modified date
    data = []
    for mypath in targetPaths:
        for root, dirs, files in os.walk(mypath) :
            myRoot = root
            #dt = os.path.getmtime(root)
            #if dt > n :
            # if the Folder was created after the last report generated
            if(searchType == "f"):
                FinalList = list(filter(filtNames.match, files)) # Name filter
            elif(searchType == "d"):
                FinalList = list(filter(filtNames.match, dirs))


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
    from shutil import copyfile

    root_path = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/Reports/'
    report_path = root_path + 'xha_assets_source_list.csv'

    assets_to_download =root_path + 'xha_assets_list.csv'

    ldt = datetime(2017,7,1,0,0).timestamp()

        # To Skip older Folder we use fallowing date
    #------------year,m,d,h,m(24hours format)
    n = datetime(2017,4,11,0,0).timestamp()

    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']
    data = [['File','path']]

    file_names = ['xha','halloweenusa']
    only_types = ['png','fla','jpg']

    targetPaths = ["/Volumes/Farm_Art/Local-vendors/LaughingDots/2017", "/Volumes/Farm_Art/Local-vendors/Pixalot", "/Volumes/Farm_Art/VendorSubmission/starart_2017","/Volumes/Farm_Art/Local-vendors/RockSalt/RockSalt_2017"]

    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    if os.path.isfile(assets_to_download):
            with open(assets_to_download) as f_obj:
                myAssetsList = csv_dict_reader(f_obj)

    filtNames = filterReg(myAssetsList) # Looks for short and long mname of expansion
    filtTypes = filterReg(only_types) # Looks for jpg png swf

    filesToCopy = ["File","Path"]

    print (filtNames)

    data =folderList(myAssetsList,targetPaths,ldt,"f")

    print(data)

    path = report_path
    print(path)
    csv_writer(data, path)

