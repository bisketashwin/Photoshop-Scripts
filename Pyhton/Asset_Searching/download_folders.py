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


if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copyfile
    from distutils.dir_util import copy_tree

    File_1_root = '/Users/anandihalli/Documents/01_Work/brazil/Reports'
    File_1_name = 'xbr_LE_3_Assets_Folder_list.csv' # list from art server
    File_1_path = os.path.join(File_1_root , File_1_name)

    Assets_root = '/Users/anandihalli/Documents/01_Work/brazil/art_assets'
    Asset_Folder_name = 'LE_3'
    Assets_folder = os.path.join(Assets_root , Asset_Folder_name)

    if not os.path.exists(Assets_folder):
        os.makedirs(Assets_folder)
        print("!!!!!!created new dir", Assets_folder)
    else:
        print(">>>>>>Folder exists", Assets_folder)

    if os.path.isfile(File_1_path):
            with open(File_1_path) as f_obj:
                File_1_dict = csv_dict_reader(f_obj)

    myList = []
    for File, Path in File_1_dict:
        myList.append(Path)

    # step to remove duplicate folder locations
    myset = set(myList)
    mynewlist = list(myset)

    for Path in mynewlist:
        fromDirectory = Path
        toDirectory = Assets_folder
        copy_tree(fromDirectory, toDirectory)
        print (Path)


