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
        #print(line["first_name"]),
        #print(line["last_name"])
        print(" ".join(line))

if __name__ == '__main__':
    import csv
    import sys
    import csv
    import re
    mypath = '/Users/anandihalli/Documents/SVN/FarmSim/FarmGame/src/assets'
    report_path = '/Users/anandihalli/Documents'
    short_name = 'xfe'
    long_name = 'anglofrench'
    file_names = [long_name,short_name]

    only_dirs = ['crafting_cottages','consumables','dialogs','fotd','hud','newsfeed']

    longest_first = sorted(only_dirs, key=len, reverse=True)
    p = re.compile(r'(?:{})'.format('|'.join(map(re.escape, longest_first))))

    print(p)

    f = re.compile(r'(?:{})'.format('|'.join(map(re.escape, file_names))))

    print(f)

    data = [["File Name","Path"]]
    for entry in scantree(mypath):
        name = entry.name
        if '.DS_Store' not in name and '.svn-base' not in name and p.search(entry.path) :
            if f.search(name):
                data.append([entry.name,entry.path])
            #print(entry.is_dir(follow_symlinks=False),entry.name,entry.path)

    #Read CSV
    #csv_path = "TB_data_dictionary_2014-02-26.csv"
    #with open(csv_path, "rb") as f_obj:
        #csv_reader(f_obj)

    # a list or nested list
    #data = [['first_name', 'last_name', 'city'],['Tyrese', 'Hirthe', 'Strackeport'],['Jules', 'Dicki', 'Lake Nickolasville'],['Dedric', 'Medhurst', 'Stiedemannberg']]

    path = report_path+"/"+short_name+"_svn_list.csv"
    csv_writer(data, path)
