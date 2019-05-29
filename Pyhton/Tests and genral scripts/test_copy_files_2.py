import os
from shutil import copy2
from pathlib import Path

#not working

def copyFile (srcname,dstname,myfile):
    try:

        my_file = Path(dstname+myfile)
        if my_file.is_file():
            # file exists then remove it
            try:
                os.remove(dst_file)
            except PermissionError as exc:
                os.chmod(dst_file, stat.S_IWUSR)
                os.remove(dst_file)
        # Copy file
        my_folder = Path(dstname)
        if my_folder.is_dir():
            result = copy2(os.path.join(srcname+myfile), dstname)

        else:
            result = "folder not foud"
        return result

    except OSError as why:
        return "Error"


source_folder = "/Users/anandihalli/Documents/01_Work/anglofrench/MasterPSD/MasterFile_Onboarding-assets"
basename = "load_xfe_anglofrench_GALive.jpg"
srcname = source_folder

dstname = "/Users/anandihalli/Documents/Scripting/Pyhton/temp"
copyFile(srcname,dstname,basename)
