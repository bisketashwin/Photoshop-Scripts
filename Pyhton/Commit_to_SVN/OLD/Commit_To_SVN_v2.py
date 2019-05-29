"""
1. Read CSV file that contains the list of files to be commited, their respective SVN path , their local source path and commit status
"""
import csv
from operator import itemgetter
import os,stat
from shutil import copy2
from pathlib import Path

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
        myList.append((line['File_Name'],line['SVN_Path'],line['Local_Path'],line['Commit_State']))
    return myList
#----------------------------------------------------------------------
def copyFile (srcname,dstname):
    my_file = Path(dstname)
    if os.path.exists(my_file):
        # file exists then remove it
        result = "File Exsists"
    # Copy file
    result = copy2(srcname, dstname)
    if os.path.exists(result):
        print(os.path.exists(result))
        result = "Copied"
    return result
#----------------------------------------------------------------------
if __name__ == "__main__":


    report_path = '/Users/anandihalli/Documents'
    data = [['File_Name','SVN_Path','Local_Path','Commit_State']]
    file_names = ['xbr','brazil']

    myList_SVN = []
    csv_path = "/Users/anandihalli/Documents/xbr_SVN_list.csv"

    Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/brazil'
    svn_dir = '/Users/anandihalli/Documents/SVN/FarmSim/FarmGame/src/assets'
    svn_dir ='/Users/anandihalli/Documents/Temp_SVN_xbr'
    with open(csv_path) as f_obj:
        myList_SVN = csv_dict_reader(f_obj)


    #print(myList_SVN[56])

    for val in myList_SVN:
        #file_tobe_copied = val[0]
        target_path = os.path.join(svn_dir + val[1])
        source_path = os.path.join(Local_soruce_dir + val[2]+'/'+val[0])
        #print(target_path,source_path)
        if 'Add' or 'Update' == val[3] :
            my_folder = Path(target_path)
            if os.path.isdir(my_folder):
                myResult = copyFile (source_path,target_path)
                print(myResult)
                data.append([val[0],val[1],val[2],myResult])
            else:
                data.append([val[0],val[1],val[2],"Target Folder not found"])
        else:
            data.append([val[0],val[1],val[2],val[3]])

    path = report_path+"/"+file_names[0]+"_local_n_SVN_list.csv"
    csv_writer(data, path)
