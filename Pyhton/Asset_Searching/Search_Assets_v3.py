
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

def find(l, elem):
    for row, i in enumerate(l):
        if elem in i[0]:
            return i
    return -1

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copyfile

    root_path = '/Users/anandihalli/Documents/01_Work/brazil/Reports/'
    report_path = root_path + 'xbr_Art_Assets_Folder_list.csv'

    Assets_root = '/Users/anandihalli/Documents/01_Work/brazil/art_assets'
    Asset_Folder_name = 'LE_1'

    AssetsFolder = os.path.join(Assets_root,Asset_Folder_name)

    assets_to_download =root_path + 'LE_1.csv'

        # To Skip older Folder we use fallowing date
    #------------year,m,d,h,m(24hours format)
    n = datetime(2017,7,11,0,0).timestamp()

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

    filesToCopy = []

    if os.path.isfile(assets_to_download):
            with open(assets_to_download) as f_obj:
                myAssetsList = csv_dict_reader(f_obj)


    if os.path.isfile(report_path):
            with open(report_path) as f_obj:
                myLocalReport = csv_dict_reader(f_obj)


    if os.path.isdir(AssetsFolder):
        for asset in myAssetsList:
            print(asset[0])
            f = find(myLocalReport,asset[0])
            if f != -1 :
                print(find(myLocalReport,asset[0]))
                s = os.path.join(f[1],f[0])
                print(os.path.isdir(s))
            else:
                print('not found')
            #shutil.copy2(asset)

    '''
    path = report_path+"/"+file_names[0]+"_Art_Assets_Folder_list.csv"
    csv_writer(data, path)
    '''
