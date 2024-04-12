class_name MainMenuHandler extends Panel
## This script handles all Main Menu buttons

func _on_new_game_button_pressed():
	%ButtonPanel.visible = !%ButtonPanel.visible
	%StartGamePanel.visible = !%StartGamePanel.visible
	return

func _on_load_game_button_pressed():
	push_error("Not implemented")
	return

func _on_settings_button_pressed():
	%ButtonPanel.visible = !%ButtonPanel.visible
	%SettingsPanel.visible = !%SettingsPanel.visible
	return

func _on_about_button_pressed():
	%ButtonPanel.visible = !%ButtonPanel.visible
	%AboutPanel.visible = !%AboutPanel.visible
	return
