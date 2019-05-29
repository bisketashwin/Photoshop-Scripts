
def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)


def csv_dict_reader(file_obj):
    firstTime =True
    """
    Read a CSV file using csv.DictReader
    """
    myList = []
    reader = csv.DictReader(file_obj, delimiter=',')

    for line in reader:
        d =[]
        keys, values = zip(*line.items())
        for i, k in enumerate(values):
            d.append(k)
        myList.append(d)
    return myList


def regExp(myList):
    longest_first = sorted(myList, key=len, reverse=True)
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

    # step to remove duplicate folder locations
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

def copyFile (src,trg):
    try:
        copy2(src,trg)
    except EnvironmentError:
        return [tempPath[0],'Error']
    else:
        return [tempPath[0],file_path]

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copy2



    root_path = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/art_assets/'

    assets_folder = root_path + 'Harvest Buildable'

    report_path = assets_folder + '/source_list.csv'

    assets_to_download = assets_folder + '/Files.csv'

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

    assetTypes = {"animal":["_200.png", "_icon_200.fla", "_full.fla"],
        "tree":["_mature.png","_icon_200.png"],
        "building":["_horizontal.png","_vertical.png"],
        "bushel":["_200.png","_super.png","_grown.png"],
        "seed":["_200.png","_super.png","_grown.png"],
        "decoration":["_200.png","_horizontal.png","_vertical.png"]}

    targetPaths = ["/Volumes/Farm_Art/Local-vendors/LaughingDots/2017", "/Volumes/Farm_Art/Local-vendors/Pixalot", "/Volumes/Farm_Art/VendorSubmission/starart_2017","/Volumes/Farm_Art/Local-vendors/RockSalt/RockSalt_2017"]

    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    if os.path.isfile(assets_to_download):
            with open(assets_to_download) as f_obj:
                myCSVData = csv_dict_reader(f_obj)

    myAssetsList = []
    myAssetTypes = []
    # if CSV has "Friendly Name", "CMS Name", "Asset Type", "Used For", "Water/Amphi", "Jira"
    for elem in myCSVData:
        myAssetsList.append(elem[1]) #  "CMS Name" is index 1
        myAssetTypes.append(elem[2])


    filtNames = filterReg(myAssetsList) # Looks for short and long mname of expansion
    filtTypes = filterReg(only_types) # Looks for jpg png swf

    filesToCopy = [["File","Path"]]

    data =folderList(myAssetsList,targetPaths,ldt,"f")

    File_1_dict = data

    for i,f in enumerate(myAssetsList):
        #print (i,f)
        for key in File_1_dict :
            fileName = key[0]
            if (f in fileName):
                Asset_type = assetTypes[myAssetTypes[i]]
                for t in Asset_type:
                    if (t in fileName):
                        tempPath = key
                        file_path = os.path.join(tempPath[1],tempPath[0])
                        dest_file_path = assets_folder

                        if (os.path.isfile(file_path) is True and os.path.isfile(dest_file_path) is False):
                            #print(file_path)
                            copyFile(file_path,dest_file_path)


    path = report_path
    print(path)
    csv_writer(data, path)


