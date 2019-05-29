"""
This script will copy last expansion files in a local folder to rename
!! Be careful test on a temp file before going ahead with final commit there will be laso some memory error commitimg all files together in SmartSVN

1. Read CSV file that contains the list of files to be commited, their respective SVN path , their local source path and commit status
"""

def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

def regExp(myList):
    longest_first = sorted(myList, key=len, reverse=True)
    print(myList)
    p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, myList))))
    return p

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


def onlyFileType(s):
    for elem in only_types:
        if s.endswith(elem):
            return True
    return False
#----------------------------------------------------------------------
def csv_dict_reader(file_obj):
    """
    Read a CSV file using csv.DictReader
    """
    myList = []
    reader = csv.DictReader(file_obj, delimiter=',')
    for line in reader:
        #'File_Name','SVN_Path','Local_Path','Commit_State']
        myList.append((line['File_Name'],line['SVN_Path'],line['Local_Path'],line['Commit_State']))
    return myList
#----------------------------------------------------------------------
def copyFile (srcname,dstname):
    try:
        my_file = Path(dstname)
        if my_file.is_file():
            # file exists then remove it
            try:
                os.remove(dst_file)
            except PermissionError as exc:
                os.chmod(dst_file, stat.S_IWUSR)
                os.remove(dst_file)
        # Copy file
        result = copy2(srcname, dstname)
        if result.is_file():
            print(result.is_file())
            result = "Copied"
        return result

    except OSError as why:
        return errors.append((srcname, dstname, str(why)))
    # catch the Error from the recursive copytree so that we can
    # continue with other files
    except Error as err:
        return errors.extend(err.args[0])
#----------------------------------------------------------------------

def filesList(targetPaths):
    FinalList = []
    for mypath in targetPaths:
        for root, dirs, files in os.walk(mypath) :
            TempList = list(filter(filtNames.match, files)) # Name filter
            for f in TempList:
                if onlyFileType(f):
                    FinalList.append(os.path.join(root,f))
    if(len(FinalList)>0):
        #print(len(FinalList),FinalList)
        return FinalList

#----------------------------------------------------------------------

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copyfile

    root_path = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/Reports/'
    report_path = root_path + 'xbr_LE_3_Assets_Folder_list.csv'

    assets_to_download =root_path + 'LE_3.csv'

    ldt = datetime(2017,7,1,0,0).timestamp()

        # To Skip older Folder we use fallowing date
    #------------year,m,d,h,m(24hours format)
    n = datetime(2017,4,11,0,0).timestamp()

    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']
    data = [['File','path']]

    file_names = ['xbr','brazil']
    only_types = ['png','swf','jpg']

    targetPaths = ["/Users/anandihalli/Documents/SVN copy"]

    p = regExp(only_dirs)
    e = regExp(exclude_dir)


    filtNames = filterReg(file_names) # Looks for short and long name of expansion
    filtTypes = filterReg(only_types) # Looks for jpg png swf

    filesToCopy = ["File","Path"]

    print (filtNames)

    data = filesList(targetPaths)




    #path = report_path
    #print(path)
    #csv_writer(data, path)
