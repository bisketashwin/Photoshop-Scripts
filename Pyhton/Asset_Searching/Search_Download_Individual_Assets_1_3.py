# This is working file which takes Files.CSV
# with "Friendly Name", "CMS Name", "Asset Type", "Used For", "Water/Amphi", "Jira"
#and creates asset folders and ads files
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

def asstFolder(cat,astType):
    print(catogory)
    if(catogory[cat] == "General"):
        assetSubFolder = root_path+astType
    else:
        assetSubFolder = root_path+cat

    if not os.path.exists(assetSubFolder):
            os.makedirs(assetSubFolder)#######
            print("!!!!!!created new dir", assetSubFolder)
            return assetSubFolder
    else:
        print(">>>>>>Folder exists", assetSubFolder)
        return assetSubFolder


#------------------------------------------------------------------------
#------------------------------------------------------------------------
#------------------------------------------------------------------------

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copy2



    root_path = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/art_assets/'

    catogory = {"Market Assets":"General",
        "Treasure Rewards and Containers":"General",
        "Animal Pen":"General",
        "Big Buildable":"Exclusive",
        "Harvest Buildable":"Exclusive",
        "Tile Unlock Assets":"General",
        "Crops":"General",
        "Vehicles":"General",
        "Paid Gifting":"Exclusive",
        "Early Access":"Exclusive",
        "Tree + Orchard":"General",
        "Eilte Horses":"Exclusive",
        "LE_1":"Exclusive",
        "LE_2":"Exclusive",
        "LE_3":"Exclusive"}

    #assets_folder = root_path + 'Harvest Buildable'

    #report_path = assets_folder + '/source_list.csv'
    report_path = root_path + 'source_list.csv'

    #assets_to_download = assets_folder + '/Files.csv'
    assets_to_download = root_path + 'Files.csv'

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

    assetTypes = {"animal":["_200.png", ".fla"],
        "tree":["_mature.png","_icon_200.png"],
        "building":["_horizontal.png","_vertical.png"],
        "bushel":["_200.png","_super.png","_grown.png"],
        "seed":["_200.png","_super.png","_grown.png"],
        "decoration":["_200.png","_horizontal.png","_vertical.png",".fla"],
        "egg":["_200.png"],
        "vehicle":[".fla","_icon_200.png"],
        "consumable":["_200.png"],
        "":["_200.png", ".fla"]}

    targetPaths = ["/Volumes/Farm_Art/Local-vendors/LaughingDots/2017", "/Volumes/Farm_Art/Local-vendors/Pixalot", "/Volumes/Farm_Art/VendorSubmission/starart_2017","/Volumes/Farm_Art/Local-vendors/RockSalt/RockSalt_2017"]

    p = regExp(only_dirs)
    e = regExp(exclude_dir)

    if os.path.isfile(assets_to_download):
            with open(assets_to_download) as f_obj:
                myCSVData = csv_dict_reader(f_obj)

    myAssetsList = []
    myAssetTypes = []
    myCatogory =[]
    # if CSV has "Friendly Name", "CMS Name", "Asset Type", "Used For", "Water/Amphi", "Jira"
    for elem in myCSVData:
        myAssetsList.append(elem[1]) #  "CMS Name" is index 1
        myAssetTypes.append(elem[2])
        myCatogory.append(elem[3])


    filtNames = filterReg(myAssetsList) # Looks for short and long mname of expansion
    #filtTypes = filterReg(only_types) # Looks for jpg png swf
    print(filtNames)
    filesToCopy = [["File","Path"]]

    if(os.path.isfile(report_path)):
        with open(report_path) as f_obj:
            data = csv_dict_reader(f_obj)
    else:
        data =folderList(myAssetsList,targetPaths,ldt,"f")
        print(data)
        csv_writer(data,report_path)

    File_1_dict = data

    for i,f in enumerate(myAssetsList):
        for key in File_1_dict :
            fileName = key[0]
            if (f in fileName):
                Asset_type = myAssetTypes[i]
                file_types = assetTypes[Asset_type] # will return "building":["_horizontal.png","_vertical.png"]
                Asset_catogory = myCatogory[i]
                for t in file_types:
                    if (t in fileName):
                        tempPath = key
                        file_path = os.path.join(tempPath[1],tempPath[0])
                        dest_file_path = asstFolder(Asset_catogory,Asset_type)
                        if (os.path.isfile(file_path) is True and os.path.isfile(dest_file_path) is False):
                            copy2(file_path,dest_file_path)
                            #continue
