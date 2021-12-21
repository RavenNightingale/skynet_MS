env.importPaths.push "/usr/data"
import "file_dat"

readme_cont = function()
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	print "lorem ipsem lorem ipsem lorem ipsem lorem ipsem"
	
	input("press 'enter' to return.")
end function

//file explorer below
fileE.explorer = function()
	print "======================================================"
	print "|                   | File System |                  |"
	print "|                   ===============                  |"
	print "|                          |                         |"
	print "|                          |                         |"
	print "|            =================================       |"
	print "======================================================"
	print "| type 'back' to return                              |"
	print "======================================================"
    
	xplr = input("skynetOS>FileSys: ")
    
	if xplr == "back" then
		return(interface.start)
	end if
end function