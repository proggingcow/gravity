extends Area2D

export var target = "level2"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	$AudioStreamPlayer2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().change_scene("res://scenes/levels/level_chooser.tscn")
		if event.pressed and event.scancode == KEY_R:
			get_tree().reload_current_scene()
		if event.pressed and event.scancode == KEY_F:
			OS.window_fullscreen = !OS.window_fullscreen




func _on_ExitArea_body_entered(body):
	get_tree().change_scene("res://scenes/levels/" + target + ".tscn")

