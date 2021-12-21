http_sett = {}
http_sett.enab_disab = ["[Enabled]", "[Disabled]"]
http_sett.on_off = "disabled"

http_sett.httpsett = function()
	if self.on_off == "disabled" then
		print "HTTP: " + self.enab_disab[1]
	else if self.on_off == "enabled" then
		print "HTTP: " + self.enab_disab[0]
	end if
end function

ssh_sett = {}
ssh_sett.enab_disab = ["[Enabled]", "[Disabled]"]
ssh_sett.on_off = "disabled"

ssh_sett.sshsett = function()
	if self.on_off == "disabled" then
		print "ssh: " + self.enab_disab[1]
	else if self.on_off == "enabled" then
		print "ssh: " + self.enab_disab[0]
	end if
end function

fire_wall = {}
fire_wall.enab_disab = ["[Enabled]", "[Disabled]"]
fire_wall.on_off = "enabled"

fire_wall.frwll_sett = function()
	if self.on_off == "disabled" then
		print "Firewall: " + self.enab_disab[1]
	else if self.on_off == "enabled" then
		print "Firewall: " + self.enab_disab[0]
		ssh_sett.sshsett(); http_sett.httpsett
	end if
	
	settings = input("skynetOS>firewall: ")
	
	if settings == "enable firewall" then
		self.on_off = "enabled"
	else if settings == "disable firewall" then
		self.on_off = "disabled"
	end if

	if settings == "enable ssh" then
		ssh_sett.on_off = "enabled"
	else if settings == "disable ssh" then
		ssh_sett.on_off = "disabled"
	end if
	
	if settings == "enable http" then
		http_sett.on_off = "enabled"
	else if settings == "disable http" then
		http_sett.on_off = "disabled"
	end if
end function