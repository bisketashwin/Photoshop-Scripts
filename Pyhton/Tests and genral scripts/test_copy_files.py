import os
from shutil import copy2
from pathlib import Path

#working script


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
        return result

    except OSError as why:
        return errors.append((srcname, dstname, str(why)))
    # catch the Error from the recursive copytree so that we can
    # continue with other files
    except Error as err:
        return errors.extend(err.args[0])

source_folder = "/Users/anandihalli/Documents/01_Work/anglofrench/MasterPSD/MasterFile_Onboarding-assets"
basename = "load_xfe_anglofrench_GALive.jpg"
srcname = os.path.join(source_folder, basename)

dstname = "/Users/anandihalli/Documents/Scripting/Pyhton/temp"
my_folder = Path(dstname)
if my_folder.is_dir():
    copyFile(srcname,dstname)
