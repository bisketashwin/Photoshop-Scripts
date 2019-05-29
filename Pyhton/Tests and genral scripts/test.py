from os import listdir, scandir
from os.path import isfile, join, isdir

mypath = '/Users/anandihalli/Documents/Scripting/Apple scripts'
mypath = '/Volumes/_UI_Dev/Expansions/AngloFrench2017'
##onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

onlyfiles = [f for f in scandir(mypath) if( print(f.path), f.name)]

print(onlyfiles)

