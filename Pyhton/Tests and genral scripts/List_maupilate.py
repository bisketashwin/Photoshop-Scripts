def fileNPath(myList,loc):
    tempData =[]
    for f in myList:
        tempData.append([f,loc])
    return tempData

if __name__ == '__main__':

  FinalList = ['png','swf','jpg']
  myRoot = "/Volumes/Farm_Art/Local-vendors/LaughingDots/2017"
  tData = fileNPath(FinalList,myRoot)
  print(tData)
