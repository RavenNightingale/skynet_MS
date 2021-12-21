folder_dat = {}
folder_dat.memory = 300

FileEntry = {}
FileEntry.fileName = ""
FileEntry.fileSize = 0

readmeFile = new FileEntry

readmeFile.name = "readme.txt"
readmeFile.fileSize = 50

folder_dat.files = []
folder_dat.files.push readmeFile

folder_dat.CalculateUsedMemory = function()
	total = 0
	
	for FileEntry in self.files
		total = total + FileEntry.fileSize
	end for
	
	return total
end function

folder_dat.freeMemory = function()
	return self.memory -self.CalculateUsedMemory
end function