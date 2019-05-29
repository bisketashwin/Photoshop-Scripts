

#----------------------------------------------------------------------
if __name__ == "__main__":
    import os
    from pathlib import Path

    mydir = '/Users/anandihalli/Documents/dany/03-08-2017_Laughingdots_Halloween 17 Elite Horses Animals_PM12'

    for root, dirs, files in os.walk(mydir, topdown=False):
        for file in files:
            new_name = file.replace("xhf","xha")
            os.rename(os.path.join(root,file), os.path.join(root,new_name))
        for dirname in dirs:
            dir_new_name = dirname.replace("xhf","xha")
            os.rename(os.path.join(root,dirname), os.path.join(root,dir_new_name))




