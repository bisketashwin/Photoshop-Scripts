
def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

def dict_to_csv_writer(myDict, path):
    First = True
    textData =""
    Data = []
    for key in myDict:
        D = myDict[key]
        if First:
            First = False
            x = D.keys()
            Data.append(x)
            textData += ",".join(map(str, x)) +"/n"
        y = D.values()
        Data.append(y)
        textData += ",".join(map(str, y)) +"/n"
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in Data:
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

def csv_to_dictionery(file_obj):
    firstTime =True
    """
    Read a CSV file using csv.DictReader
    """
    myList = {}
    reader = csv.DictReader(file_obj, delimiter=',')

    for line in reader:

        keys, values = zip(*line.items())
        myList[values[0]] = dict(line)
    return myList

if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copyfile

    # After commiting to SVN the commit info is collected in a new sublime text fil and saved as CSV which inturn is used here
    File_1_root = '/Users/anandihalli/Documents/01_Work/brazil/Reports'
    File_1_name = 'xbr_SVN_commit.csv' # list from art server
    File_1_path = os.path.join(File_1_root , File_1_name)

    # This is the CSV containg File to be commited its target path and soruce path
    File_2_root = '/Users/anandihalli/Documents/01_Work/brazil/Reports'
    File_2_name = 'xbr_SVN_list.csv' # List from ZCMS
    File_2_path = os.path.join(File_2_root , File_2_name)

    Report_File_name = "xbr_SVN_list.csv"
    Report_path = os.path.join(File_2_root,Report_File_name)

    report = {}


    if os.path.isfile(File_1_path):
            with open(File_1_path) as f_obj:
                File_1_dict = csv_to_dictionery(f_obj)

    if os.path.isfile(File_2_path):
            with open(File_2_path) as f_obj:
                File_2_dict = csv_to_dictionery(f_obj)

    ###### Check ZCMS elements in Art Folders List
    for f2 in File_2_dict:
        # Take element from ZCMS list of assets check if found in Art Server List and add report Not found / if found add the 'soruce' path
        found = False
        fileSearched = ''
        for f1 in File_1_dict:

            if f2 in f1:
                d = File_2_dict[f2]
                if d["SVN_Path"].lstrip("/!@#$%^&*()") in f1 :
                    d["Commit_State"] = "Commited"
                else:
                    d["Commit_State"] = "Wrong folder Commited"
                d["SVN_Path_current"] = f1
                report[f2] = d
                found = True
                break
        if not found:
            d = File_2_dict[f2]
            d['Commit_State'] = "Not Commited"
            report[f2] = d


    ###### Finally write CSV report
    dict_to_csv_writer(report, Report_path)


