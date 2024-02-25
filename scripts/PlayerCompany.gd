extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	var _PlayerCompany = {
		"Cash": 0, ## Money available
		"CEOName": "Steve Jobs", ## Name of CEO
		"CompanyName": "McDonalds" ## Company name
	}
	print("PlayerCompany initialized")

func set_player_stats(key, value):
	PlayerCompany[key] = value
	return

func get_player_stats(key, value):
	return PlayerCompany[key]
