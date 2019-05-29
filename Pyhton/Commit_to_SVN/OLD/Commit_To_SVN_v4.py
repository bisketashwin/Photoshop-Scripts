#
#--------------
#  !! Be careful
#--------------
### 1. Make a copy (take backup) of the SVN folder on your local drive
### 2. Change "Commit_State" to "Update" if want to update the files
#       Or change to "Add" if you are creating place holders or adding file afresh
#---------------------------------------------------------------

#  How does this script works
#---------------------------
#  Reads CSV file e.g. 'xha_SVN_list.csv' that contains the list of files to be commited to svn
#  Access their respective "SVN path" from CSV data
#  Gets the file "File_Name" e.g. "consume_halloweenusaPoints_icon_30.png" from
#  Folder "Local_Path" which should be in Current Expansion Folder e.g. "halloweenusa/ToSVN"
#  and copies it to "SVN_Path" e.g."/FarmSim/FarmGame/src/assets/consumables"
#  and creates report e.g. "xha_SVN_commit_report.csv" on Reports Folder
#----------------------------


def csv_writer(data, path):
    ###
    # Write data to a CSV file path
    ###
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

#----------------------------------------------------------------------
def csv_dict_reader(file_obj):
    firstTime =True
    ###
    #  Read a CSV file using csv.DictReader
    ###
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
        if my_file.is_file(my_file ):
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
def copyFile2 (srcname,dstname):

    try:

        my_file = Path(dstname)
        #print(os.path.isfile(my_file))
        if os.path.isfile(my_file):
            # file exists then remove it
            try:
                #print(os.path.isfile(my_file))
                os.remove(dst_file)
                print(os.path.isfile(my_file))
                result = copy2(srcname, dstname)
                print(result)
                if os.path.isfile(result):
                    print(result.is_file())
                    result = "Copied"
                return result
            except PermissionError as exc:
                print("Error")
                #os.chmod(dst_file, stat.S_IWUSR)
                #os.remove(dst_file)
            # Copy file
            else:
                print("No Success")


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
    # Values that needs to be changed are listed below
    #-----------------------------------------------------------
    #           [ Expansion Prefix , Expansion Internal Name ]
    file_names = ['xha','halloweenusa']
    #                   location of the expansion folder
    Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/halloweenusa'
    #-----------------------------------------------------------
    # Values that should be constant across all the projects for user
    #-----------------------------------------------------------
    #           Location of the SVN folder pn local drive
    svn_dir = '/Users/anandihalli/Documents/SVN'
    #-----------------------------------------------------------
    # Values that some time needs to be changed
    #-----------------------------------------------------------
    #           Name of the folder where reports are stored
    #           This folder is always inside expansion folder
    reportFolder = 'Reports'
    #           CSV file inside Reports folder
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

            target_path = os.path.join(svn_dir + val[1]+'/'+val[0])
            source_path = os.path.join(Local_soruce_dir + val[2]+'/'+val[0])

            if(os.path.isfile(source_path)):
                # Source we are about to copy to target exists
                #print('Update' == val[3],os.path.isfile(target_path),val[0])
                if ('Update' == val[3] and os.path.isfile(target_path)) :
                    # Making sure we are only over writing existing file
                    myResult = 'Found file '
                    print(myResult, target_path)
                    myResult = copyFile (source_path,target_path)
                elif('Add' == val[3] and os.path.isfile(target_path) == False):
                    # Not to exidentally over write old expansion files
                    myResult = 'Add file '
                    print(myResult, target_path)
                    myResult = copyFile (source_path,target_path)
                else:
                    myResult = 'Not sure what to be done '
                # here the result us not being captured yet
                # need to check copyFile function
                reportData.append([val[0],val[1],val[2],myResult])
            else:
                myResult = 'No File to update'
                reportData.append([val[0],val[1],val[2],myResult])
        except:
            reportData.append([val[0],val[1],val[2],val[3] + "  Exception"])
            pass

    path = report_path+"/"+file_names[0]+"_SVN_commit_report.csv"
    csv_writer(reportData, path)
