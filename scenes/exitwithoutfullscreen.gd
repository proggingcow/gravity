extends Area2D

export var target = "level2"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://scenes/levels/level_chooser.tscn")
		if event.pressed and event.scancode == KEY_R:
# warning-ignore:return_value_discarded
			get_tree().reload_current_scene()

# warning-ignore:unused_argument
func _on_ExitArea_body_entered(body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/levels/" + target + ".tscn")

