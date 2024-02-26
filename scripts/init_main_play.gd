extends Button

func _pressed():
	## Recieve our player's names
	var CompanyName = get_node("../CompanyName")
	var CEOFirstName = get_node("../CEOFirstName")
	var CEOLastName = get_node("../CEOLastName")
	var PlayerCompanyGlobal = get_node("/root/PlayerCompany")
	print("New game initialized")
	print("Player name: " + CEOFirstName.get_text() + " " + CEOLastName.get_text())
	print("Company name: " + CompanyName.get_text())
	
	## This is where all user data is recorded to
	## and is initialized to this during a new game.
	#PlayerCompanyGlobal.set_player_stats("CEOName", CEONameNode.get_text())
	#PlayerCompanyGlobal.set_player_stats("CompanyName", CompanyNameNode.get_text())
	#PlayerCompanyGlobal.set_player_stats("Cash", 500000)
	#print("PlayerCompany dictionary initialized for player")
	
	## Switch scene to playing area, new game processing is done
	get_tree().change_scene_to_file("scenes/MainPlay.tscn")
