
def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
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

def csv_dict_reader2(file_obj,dictKey):
    firstTime =True
    """
    Read a CSV file using csv.DictReader
    """
    myList = {}
    reader = csv.DictReader(file_obj, delimiter=',')

    for line in reader:
        d =[]
        keys, values = zip(*line.items())
        for i, k in enumerate(values):
            d.append(k)
        myList[line[dictKey]] = d
    return myList


if __name__ == '__main__':
    import os, sys, csv, re
    from datetime import datetime, time
    from shutil import copy2
    from distutils.dir_util import copy_tree

    file_names = ['xha','halloweenusa']

    report = [['File','result']]

    File_1_root = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/Reports'
    File_1_name = 'xha_assets_source_list.csv' # list from art server
    File_1_path = os.path.join(File_1_root , File_1_name)

    File_2_name = 'xha_assets_list.csv' # list from art server
    File_2_path = os.path.join(File_1_root , File_2_name)

    Assets_root = '/Users/anandihalli/Documents/01_Work/HalloweenUSA/art_assets'
    assetTypes = {"animal":["_200.png", "_icon_200.fla", "_full.fla"],
        "tree":["_mature.png","_icon_200.png"],
        "building":["_horizontal.png","_vertical.png"],
        "bushel":["_200.png","_super.png","_grown.png"],
        "seed":["_200.png","_super.png","_grown.png"],
        "decoration":["_200.png","_horizontal.png","_vertical.png"]}

    if os.path.isfile(File_1_path):
            with open(File_1_path) as f_obj:
                File_1_dict = csv_dict_reader2(f_obj,'File')

    if os.path.isfile(File_2_path):
            with open(File_2_path) as f_obj:
                File_2_dict = csv_dict_reader2(f_obj,'CMS Name')

    #print(File_2_dict)

    for elem in File_2_dict:
        #Friendly Name   CMS Name    Asset Type  Used For    Water/Amphi Jira
        #    0              1           2           3           4           5
        #print(elem, File_2_dict[elem][3])
        subFolder = File_2_dict[elem][3]
        assetType = File_2_dict[elem][2]
        assetName = File_2_dict[elem][1]

        assetSubFolder = os.path.join(Assets_root , subFolder)
        if not os.path.exists(assetSubFolder):
            os.makedirs(assetSubFolder)
            print("!!!!!!created new dir", assetSubFolder)
        else:
            print(">>>>>>Folder exists", assetSubFolder)


        for key in File_1_dict :
            if key.startswith(assetName):
                # files we need in this asset name
                if assetType in assetTypes:
                    Asset_type = assetTypes[assetType]
                    for t in Asset_type:
                        if (t in key):
                            tempPath = File_1_dict[key]
                            file_path = os.path.join(tempPath[1],tempPath[0])
                            dest_file_path = os.path.join(assetSubFolder,tempPath[0])
                            #print (file_path)
                            if (os.path.isfile(file_path) is True and os.path.isfile(dest_file_path) is False):
                                try:
                                    copy2(file_path,assetSubFolder)
                                except EnvironmentError:
                                    report.append([tempPath[0],'Error'])
                                else:
                                    report.append([tempPath[0],file_path])

        #break

    path = Assets_root+"/"+file_names[0]+"_assets_Download_report.csv"
    csv_writer(report, path)

