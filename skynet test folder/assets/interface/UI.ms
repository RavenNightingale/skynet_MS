//user interface below
interface = {}

env.importPaths.push "/usr/assets/interface/filesys"
import "fileE_ui"
xplr = new fileE_ui

env.importPaths.push "/usr/assets/interface/settings"
import "firewall"
frwll = new firewall.fire_wall

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
		else if user == "2" then
			xplr.explorer
		end if
	end while
end function