"""
!! Be care ful test on a temp file before going ahead with final commit there will be laso some memory error commitimg all files together in SmartSVN

1. Read CSV file that contains the list of files to be commited, their respective SVN path , their local source path and commit status
"""
def filesList(targetPaths,searchType):

    data = []
    for mypath in targetPaths:
        for root, dirs, files in os.walk(mypath) :
            myRoot = root
            if(searchType == "f"):
                FinalList = list(files) # Name filter
            elif(searchType == "d"):
                FinalList = list(filter(filtNames.match, dirs))


            if len(FinalList) > 0:
                tData = fileNPath(FinalList,myRoot)
                data.extend(tData)
                #break # FOr testing
            else:
                continue
    return data
#----------------------------------------------------------------------
def onlyFileType(s):
    for elem in only_types:
        if s.endswith(elem):
            return True
    return False
#----------------------------------------------------------------------

def fileNPath( myList,loc):
    tempData =[]
    for f in myList:
        tempData.append([f,loc])
    return tempData
#----------------------------------------------------------------------

def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

#----------------------------------------------------------------------
def csv_dict_reader(file_obj):
    """
    Read a CSV file using csv.DictReader
    """
    myList = []
    reader = csv.DictReader(file_obj, delimiter=',')
    for line in reader:
        #'File_Name','SVN_Path','Local_Path','Commit_State']
        myList.append((line['File_Name'],line['SVN_Path'],line['Commit_State']))
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
if __name__ == "__main__":
    import csv
    from operator import itemgetter
    import os
    from shutil import copy2
    from pathlib import Path

    report_path = '/Users/anandihalli/Documents/01_Work/brazil/Reports'
    data = [['File_Name']]

    #only_types = ['png','swf','jpg']
    only_types = ['jpg']

    myList_SVN = []
    csv_path = os.path.join(report_path,"xbr_SVN_update.csv")

    sourcePaths = ['/Users/anandihalli/Documents/01_Work/brazil/MasterPSD/xbr_Features-assets']
    Target_dir = '/Users/anandihalli/Documents/01_Work/brazil/ToSVN'
    #svn_dir ='/Users/anandihalli/Documents/Temp_SVN_xbr'
    with open(csv_path) as f_obj:
        myList_SVN = csv_dict_reader(f_obj)


    LocalFoles =filesList(sourcePaths,"f")

    if(os.path.isdir(Target_dir)):
        for elem in LocalFoles:
            Found = False;
            for myElem in myList_SVN:
                if(elem[0] == myElem[0] and onlyFileType(elem[0])):
                    print(myElem)
                    source_path = os.path.join(elem[1],elem[0])
                    copy2 (source_path,Target_dir,follow_symlinks=False)
                    data.append([elem[0]])
                    Found = True
                    break

        path = os.path.join(Target_dir,"FilesToTinyPNG.csv")
        csv_writer(data, path)
