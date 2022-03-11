extends RigidBody2D

export var left = true
export var move = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# warning-ignore:unused_argument
func _process(delta):
	if $l.get_overlapping_bodies().size() > 0 :
		left = false
	if $r.get_overlapping_bodies().size() > 0 :
		left = true
	if left == true:
		apply_central_impulse(move)
	if left == false:
		apply_central_impulse(Vector2(-move.x,move.y))
	if $selfdeath.get_overlapping_bodies().size() > 0:
		get_parent().remove_child(self)
