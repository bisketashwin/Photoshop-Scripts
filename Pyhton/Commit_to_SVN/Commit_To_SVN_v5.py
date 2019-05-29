"""
!! Be care ful test on a temp file before going ahead with final commit there will be laso some memory error commitimg all files together in SmartSVN

1. Read CSV file that contains the list of files to be commited, their respective SVN path , their local source path and commit status

Chnage: Cheching if the need to "Update" or create when "Add" is Commit_State

Need to test after changes
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
    #-----------------------------------------------------------
    # Values that needs to be chabged end
    #-----------------------------------------------------------
    # if file_names = ['xha','halloweenusa']
    Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/'+file_names[1]
    # Then  Local_soruce_dir = '/Users/anandihalli/Documents/01_Work/halloweenusa'
    reportFolder = 'Reports'
    filesToSVN_list = file_names[0]+'_SVN_list.csv'
    # Then  filesToSVN_list = 'xha_SVN_list.csv'
    svn_dir = '/Users/anandihalli/Documents/SVN'


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
                print('Add' == val[3],os.path.isfile(target_path),val[0])
                if ('Update' == val[3] & os.path.isfile(target_path)) :
                    # Making sure we are only over writing existing file
                    myResult = 'Found file'
                    #print(myResult)
                    myResult = copyFile (source_path,target_path)
                elif('Add' == val[3] & os.path.isfile(target_path) == False):
                    # Not to exidentally over write old expansion files
                    myResult = 'Add file'
                    #print(myResult)
                    myResult = copyFile (source_path,target_path)
                # here the result us not being captured yet
                # need to check copyFile function
                reportData.append([val[0],val[1],val[2],myResult])
            else:
                myResult = 'No change'
                reportData.append([val[0],val[1],val[2],myResult])
        except:
            reportData.append([val[0],val[1],val[2],val[3] + "  Exception"])
            pass

    path = report_path+"/"+file_names[0]+"_SVN_commit_report.csv"
    csv_writer(reportData, path)
