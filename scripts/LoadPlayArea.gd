extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var PlayerCompanyGlobal = get_node("/root/PlayerCompany")
	#var CompanyName = PlayerCompanyGlobal.PlayerCompany["CompanyName"]
	#print(CompanyName + " is loaded")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
