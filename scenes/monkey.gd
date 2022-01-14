extends RigidBody2D


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
	if event is InputEventKey :
		if event.pressed and event.scancode == KEY_UP :
			if $Feet.get_overlapping_bodies().size() > 0 :
				apply_central_impulse(Vector2(0,-200))
		if event.pressed and event.scancode == KEY_RIGHT :
			apply_central_impulse(Vector2(80,0))
		if event.pressed and event.scancode == KEY_LEFT :
			apply_central_impulse(Vector2(-80,0))
