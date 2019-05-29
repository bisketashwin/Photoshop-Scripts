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

if __name__ == '__main__':
    import sys
    mypath = '/Users/anandihalli/Documents/01_Work/brazil'
    for entry in scantree(mypath):
        if(entry.name != '.DS_Store'):
            print(entry.name)
