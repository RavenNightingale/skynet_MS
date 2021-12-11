//user interface below
interface = {}
globals.interface = interface

env.importPaths.push "/usr/assets/interface/filesys"
import "fileE_ui"
xplr = new fileE_ui.fileE

interface.start = function()
	while true
		print "======================================================"
		print "|                    | skynetOS |                    |"
		print "|                    ============                    |"
		print "| (1) Exit                 |                         |"
		print "| (2) File explorer        |                         |"
		print "| (3) Settings             |                         |"
		print "|            ==============================          |"
		print "|            |Powered by Cyberdyne Systems|          |"
		print "======================================================"
		print "welcome " + player_data.username + ". " + "type 'help' for more."
		
		user = input("skynetOS: ")
		
		if user == "1" then
			return
		end if
	
		if user == "2" then
			xplr.explorer()
		end if	
	end while
end function