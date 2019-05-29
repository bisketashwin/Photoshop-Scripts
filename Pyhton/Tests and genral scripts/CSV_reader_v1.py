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
        myList.append((line["File Name"],line["Path"]))
    return myList
#----------------------------------------------------------------------
if __name__ == "__main__":
    import csv
    from operator import itemgetter

    report_path = '/Users/anandihalli/Documents'

    data = [['File_Name','SVN_Path','Local_Path']]

    file_names = ['xfe','anglofrench']

    myList_Local = []

    csv_path = "/Users/anandihalli/Documents/xfe_local_list.csv"
    with open(csv_path) as f_obj:
        myList_Local = csv_dict_reader(f_obj)

    #print(myList_Local[56])

    myList_SVN = []
    csv_path = "/Users/anandihalli/Documents/xfe_svn_list.csv"
    with open(csv_path) as f_obj:
        myList_SVN = csv_dict_reader(f_obj)

    #print(myList_SVN[56])

    for val in myList_SVN:
        found = False
        for elem in myList_Local:
            if val[0] == elem[0]:
                data.append([val[0],val[1],elem[1]])
                found = True
                break
        if found == False :
            data.append([val[0],val[1],'Not Found'])

    path = report_path+"/"+file_names[0]+"_local_n_SVN_list.csv"
    csv_writer(data, path)
