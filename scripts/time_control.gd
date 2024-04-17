extends Timer
@onready var date_label = %DateLabel
@onready var date_day = 1
@onready var date_month = 1
@onready var date_year = 1970
@onready var speed_multiplier = 0
@onready var red = load("res://resources/visual_shader/pause_button_red.tres")
@onready var green = load("res://resources/visual_shader/speed_button_green.tres")
const tick_time = 0.5 ## Length of each day in seconds

# Initialize and pause the Timer node.
func _ready():
	self.start()
	self.paused = true

# This function progresses time.
# The original game runs on ~118 BPM, which is 1.97 seconds per day
# (Could also be arguable that 2 is the original speed in the game.)
func _on_timeout():
	date_day += 1
	if date_month <= 12:
		if date_day <= 30:
			return
		else: ## New month
			date_month += 1
			date_day = 1
	else: ## New year
		date_month = 1
		date_day = 1
		date_year += 1

func _process(_delta):
	date_label.text = str("D", date_day, "/M", date_month, "/Y", date_year)

func _on_speed_1_button_pressed():
	speed_multiplier = 1
	self.paused = false
	self.set_wait_time(tick_time / speed_multiplier) ## 0.5 seconds
	button_color_management(speed_multiplier)
	print("Speed set to 1")
	print(self.wait_time)

func _on_speed_2_button_pressed():
	speed_multiplier = 2.5
	self.paused = false
	self.set_wait_time(tick_time / speed_multiplier) ## 0.2 seconds
	button_color_management(speed_multiplier)
	print("Speed set to 2")
	print(self.wait_time)

func _on_speed_3_button_pressed():
	speed_multiplier = 5
	self.paused = false
	self.set_wait_time(tick_time / speed_multiplier) ## 0.1 seconds
	button_color_management(speed_multiplier)
	print("Speed set to 3")
	print(self.wait_time)

func _on_pause_button_pressed():
	speed_multiplier = 0
	self.paused = true
	button_color_management(speed_multiplier)
	print("Time paused")
	print(self.wait_time)

# BUG: Currently does not work, pushed anyways because it doesn't crash
# for now and you'll be able to tell what speed you're on anyways.
func button_color_management(time_scale):
	var speed_1_button = %Speed1Texture.material
	var speed_2_button = %Speed2Texture.material
	var speed_3_button = %Speed3Texture.material
	var pause_button = %PauseTexture.material
	match time_scale:
		0:
			pause_button = red
		1:
			pause_button = null
			speed_1_button = green
		2.5:
			pause_button = null
			speed_2_button = green
		5:
			pause_button = null
			speed_3_button = green
		_:
			pause_button = null
			speed_1_button = green
			speed_2_button = green
			speed_3_button = green
