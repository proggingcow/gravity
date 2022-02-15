extends RigidBody2D

export var facing = "l"

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if $Left.get_overlapping_bodies().size()==1:
		facing = "r"
	if $Right.get_overlapping_bodies().size()==1:
		facing = "l"
	if $Wheels.get_overlapping_bodies().size()==1 and facing == "l":
		apply_central_impulse(Vector2(-20,0))
	if $Wheels.get_overlapping_bodies().size()==1 and facing == "r":
		apply_central_impulse(Vector2(20,0))
