def filterReg (myList):
    inded result #r = re.compile(".*(cat|wil)")
    s = '.*('
    first = True
    for elem in myList:
        s += elem
        if first:
            first = False
            s += '|'
    s += ')'
    return re.compile(s)


if __name__ == '__main__':
    import re
    mylist = ["dog", "cat", "wildcat", "thundercat", "cow", "hooo","wili","willow"]

    filterList = ['cat','wil']

    r = filterReg(filterList)
    print (r)

    newlist = list(filter(r.match, mylist))
    print (newlist)
