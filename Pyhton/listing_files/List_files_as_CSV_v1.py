try:
    from os import scandir
except ImportError:
    from scandir import scandir  # use scandir PyPI module on Python < 3.5

def scantree(path):
    """Recursively yield DirEntry objects for given directory."""
    for entry in scandir(path):
        if entry.is_dir(follow_symlinks=False):
            yield from scantree(entry.path)  # see below for Python 2.x
        else:
            yield entry

# Python 3.x version

def csv_writer(data, path):
    """
    Write data to a CSV file path
    """
    with open(path, "w", newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')
        for line in data:
            writer.writerow(line)

def csv_dict_reader(file_obj):
    """
    Read a CSV file using csv.DictReader
    """
    reader = csv.DictReader(file_obj, delimiter=',')
    for line in reader:
        print(" ".join(line))

def regExp(myList):
    longest_first = sorted(myList, key=len, reverse=True)
    p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, longest_first))))
    return p

def onlyFileType(s):
    for elem in only_types:
        if s.endswith(elem):
            return True
    return False

def is_ascii(s):
    return bool(re.match(r'[\x00-\x7F]+$', s))

if __name__ == '__main__':
    import sys
    import csv
    import re

    #default values
    mypath = '/Users/anandihalli/Documents'
    file_names = ['','']
    only_dirs = ['']
    exclude_dir =['']
    data = []

    search = 'SVN'

    look_in = ['SVN','Local','UI_Art']

    only_types = ['png','swf','jpg']

    if  search in look_in :

        if 'SVN' == search :
            mypath = '/Users/anandihalli/Documents/SVN/FarmSim/FarmGame/src/assets'
            file_names = ['xfe','anglofrench']
            only_dirs = ['crafting_cottages','consumables','dialogs','fotd','hud','newsfeed']
            exclude_dir =['']
            data = [["File_Name","Path"]]
    #
        else :
            if 'Local' == search :
            mypath = '/Users/anandihalli/Documents/01_Work/brazil'
            file_names = ['','']
            only_dirs = ['']
            exclude_dir = ['_BaseFiles','art_assets','CommonFiles','Ideation','Innovation','InnovationBeta','SVN_delete']
            data = [["File_Name","Path"]]

            elif 'UI_Art' == search:
                mypath = 'Volumes/Farm_Art/Local-vendors/Pixalot'


    report_path = '/Users/anandihalli/Documents'



    p = regExp(only_dirs)

    f = regExp(file_names)

    e = regExp(exclude_dir)


    for entry in scantree(mypath):

        if is_ascii(entry.path):
            if onlyFileType(entry.name) and not e.search(entry.path) :
                filePath = entry.path
                if f.search(entry.name):
                    s = entry.path.replace(mypath,"").replace("/"+entry.name,"")
                    data.append([entry.name,s])
        else:
            print(is_ascii(entry.path))


    #path = report_path+"/"+file_names[0]+"_UI_Art_list_dialogs.csv"
    #csv_writer(data, path)
