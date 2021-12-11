fileE = {}
fileE.memory = 300 //total system memory

//empty file template below
FileEntry = {}
FileEntry.fileName = ""
FileEntry.fileSize = 0 
FileEntry.content = ""

//new file entry below
readmeFile = new FileEntry

readmeFile.fileName = "readme.txt"
readmeFile.fileSize = 50

fileE.files = []
fileE.files.push readmeFile

//memory calculation below
fileE.calculateUsedMemory = function()
    total = 0
    
    for FileEntry in self.files
        total = total + FileEntry.fileSize  
    end for
    
    return total
end function

//calculated memory below
fileE.freeMemory = function()
    return self.memory - self.calculateUsedMemory
end function

//file explorer below
fileE.explorer = function()
    print "======================================================"
    print "|                   | File System |                  |"
    print "|                   ===============                  |"
    for FileEntry in fileE.files
        print "| " + FileEntry.fileName + " " + FileEntry.fileSize + "            |                         |"
    end for
    print "|                          |                         |"
    print "|                          |                         |"
    print "|            =================================       |"
    print "|            |available system memory: " + fileE.freeMemory + " mb" + "|       |"
    print "======================================================"
    print "| type 'back' to return                              |"
    print "======================================================"
    
    xplr = input("skynetOS>FileSys: ")
    
    if xplr == "back" then
        return(interface.start)
    end if
    
    if xplr == "rm readme.txt" then
        fileE.files.remove fileE.files.indexOf(readmeFile)
    end if
end function