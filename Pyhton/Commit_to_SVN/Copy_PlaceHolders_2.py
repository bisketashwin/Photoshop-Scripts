"""
This Script copies last Expansion Place holder files to a folder ofr renaming
!! Be care ful test on a temp file before going ahead with final commit there will be laso some memory error commitimg all files together in SmartSVN

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
        my_dir = Path(dstname)

        my_file = Path(srcname)
        print( my_file.is_file(),my_file)
        if my_dir.is_dir() and my_file.is_file():

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
    data = [['File_Name','SVN_Path','Local_Path','Commit_State']]
    file_names = ['xbr','brazil']

    myList_SVN = []
    csv_path = "/Users/anandihalli/Documents/01_Work/HalloweenUSA/Reports/xbr_SVN_list.csv"


    Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/placeholders'
    svn_dir = '/Users/anandihalli/Documents/SVN/FarmSim/FarmGame/src/assets'
    #svn_dir ='/Users/anandihalli/Documents/Temp_SVN_xbr'
    with open(csv_path) as f_obj:
        myList_SVN = csv_dict_reader(f_obj)


    #print(myList_SVN[56])

    for val in myList_SVN:
        try:
            #file_tobe_copied = val[0]
            #target_path = os.path.join(svn_dir + val[1])
            source_path = os.path.join(svn_dir + val[1])
            print(source_path , val[0])
            source_path = os.path.join(source_path +"/"+ val[0])

            #source_path = os.path.join(Local_soruce_dir + val[2]+'/'+val[0])
            target_path = Local_soruce_dir
            #print(val[3],target_path,source_path)
            if 'Add' or 'Update' or 'Not Commited' == val[3] :
                my_folder = Path(target_path)
                #print(my_folder.is_dir())
                if my_folder.is_dir():
                    myResult = copyFile (source_path,target_path)
                    print(myResult)
                    data.append([val[0],val[1],val[2],myResult])
                else:
                    data.append([val[0],val[1],val[2],"Target Folder not found"])
            else:
                data.append([val[0],val[1],val[2],val[3]])
        except:
            data.append([val[0],val[1],val[2],val[3] + "  Exception"])
            pass

    #path = report_path+"/"+file_names[0]+"_local_n_SVN_list.csv"
    #csv_writer(data, path)
