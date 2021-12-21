//introduction scenes below
create_acc = function()
	wait 3
	print "welcome user to skynetOS."
	
	user = input("enter username: ")
	player_data.username = user
	userpass = input("enter password: ")
	player_data.password = user

	print "congratulations! your account is all set up."
	wait(3)
	interface.start()
end function

probe_out = {}
probe_out.complete = false

probe_out.start = function()
	if self.complete == false then
		print "powerup [OK]"
		wait 1
		
		print "boot to OS [OK]"
		wait 1
		
		print "main board components [OK]"
		wait 3		
	end if
	
	enter = input("press 'enter' button to probe out...")
		
	if enter == "" then
		self.complete = true
		create_acc()
	end if
end function