extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open("res://progress.txt", file.WRITE)
	file.store_line(str(3))
	file.close()

func _process(delta):
	if Input.is_key_pressed(KEY_SPACE) or $Button.pressed:
		get_tree().change_scene("res://scenes/levels/level_chooser.tscn")
