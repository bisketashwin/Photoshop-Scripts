"""
--------------
!! Be careful
--------------
### 1. Make a copy (take backup) of the SVN folder on your local drive
### 2. Change "Commit_State" to "Update" if want to update the files
       Or change to "Add" if you are creating place holders or adding file afresh
---------------------------------------------------------------

How does this script works
---------------------------
Reads CSV file viz 'xha_SVN_list.csv' that contains the list of files to be commited to svn,
Access their respective "SVN path" from CSV data
Gets the file from "Local_Path" local source path given in CSV data
and copies it to "SVN_Path"
----------------------------
"""

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
    import sys
    import csv
    from operator import itemgetter
    import os
    from shutil import copy2
    from pathlib import Path

    #-----------------------------------------------------------
    # Values that needs to be chabged are bellow
    #-----------------------------------------------------------
    file_names = ['xha','halloweenusa']
    Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/halloweenusa'
    #-----------------------------------------------------------
    # Values that should be constant across all the projects for user
    #-----------------------------------------------------------
    svn_dir = '/Users/anandihalli/Documents/SVN'
    #-----------------------------------------------------------
    # Values that some time needs to be changed
    #-----------------------------------------------------------
    reportFolder = 'Reports'
    filesToSVN_list = 'xha_SVN_list.csv'
    #-----------------------------------------------------------
    # Values that needs to be chabged end
    #-----------------------------------------------------------

    if (os.path.isdir(Path(Local_soruce_dir))):
        report_path = Local_soruce_dir +'/'+reportFolder
        if (os.path.isdir(Path(report_path))):
            csv_path = report_path +'/'+filesToSVN_list
        else:
            print("Not found ", report_path)
            sys.exit(1)
    else:
        print("Not found ", Local_soruce_dir)
        sys.exit(1)

    if (os.path.isdir(Path(svn_dir)) == False):
        print("Not found ", svn_dir)
        sys.exit(1)

    myList_SVN = []
    with open(csv_path) as f_obj:
        myList_SVN = csv_dict_reader(f_obj)

    reportData = [['File_Name','SVN_Path','Local_Path','Commit_State']]
    # report

    for val in myList_SVN:

        try:
            #file_tobe_copied = val[0]
            target_path = os.path.join(svn_dir + val[1])
            source_path = os.path.join(Local_soruce_dir + val[2]+'/'+val[0])
            #print(target_path,source_path)
            if 'Add' or 'Update' or 'Not Commited' == val[3] :
                my_folder = Path(target_path)
                if my_folder.is_dir():
                    #print(" ---- ",os.path.isfile(source_path),source_path)
                    if(os.path.isfile(source_path)):
                        #print(os.path.isfile(source_path))
                        print(source_path)
                        myResult = copyFile (source_path,target_path)

                        reportData.append([val[0],val[1],val[2],myResult])
                else:
                    reportData.append([val[0],val[1],val[2],"Target Folder not found"])
            else:
                reportData.append([val[0],val[1],val[2],val[3]])
        except:
            reportData.append([val[0],val[1],val[2],val[3] + "  Exception"])
            pass

    path = report_path+"/"+file_names[0]+"_SVN_commit_report.csv"
    csv_writer(reportData, path)
