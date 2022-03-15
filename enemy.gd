extends RigidBody2D

export var moving = "l"
export var move = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if $l.get_overlapping_bodies().size() > 0 :
		moving = "r"
	if $r.get_overlapping_bodies().size() > 0 :
		moving = "l"
	if moving == "l":
		apply_central_impulse(move)
	if moving == "r":
		apply_central_impulse(Vector2(-move.x,move.y))
	if $selfdeath.get_overlapping_bodies().size() > 0:
		get_parent().remove_child(self)
