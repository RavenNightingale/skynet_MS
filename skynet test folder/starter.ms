env.importPaths.push "/usr/data"
import "user_dat"
player = new user_dat.player_data


env.importPaths.push "/usr/assets/intros" //imports introduction scenes
import "awakening"
seq_1 = new awakening.probe_out

env.importPaths.push "/usr/assets/interface" //imports user interface
import "UI"
ui = new UI.interface

load_seq = function() //loads sequence and checks level completion
	if seq_1.complete == false then
		seq_1.start()
	else if seq_1.complete == true then 
		ui.start()
	end if
end function

dev_mode = function() //allows devs to quickly test code
	print "select a level"
	print "(1) awakening         skynetOS(2)"
	print; print
	
	select = input("level: ")
	
	if select == "1" then
		seq_1.start
	else if select == "2" then
		ui.start
	end if
end function

while true //main menu
	print "welcome to skynet"
	print; print
	print "this is a work in progress game"
	print "things are subject to change"
	print"new (1)        load game (2)        dev mode (3)"
	print; print
	
	main = input("main menu: ")
	
	if main == "1" then
		seq_1.complete = false
		renew.reload
		seq_1.start
	else if main == "2" then
		load_seq
	else if main == "3" then
		dev_mode
	end if
end while