extends Button

# var CompanyName = get_tree().get_root().get_node("/root/Control/Panel/CompanyName").text()

# Called when the node enters the scene tree for the first time.
func _pressed():
	get_tree().change_scene_to_file("scenes/MainPlay.tscn")
