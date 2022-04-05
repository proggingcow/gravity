extends RigidBody2D

export var move = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	applied_force = move

func _process(_delta):
	if $l.get_overlapping_bodies().size() > 0 :
		applied_force = Vector2(-1*abs(move.x),move.y)
	if $r.get_overlapping_bodies().size() > 0:
		applied_force = Vector2(abs(move.x),move.y)
	if $selfdeath.get_overlapping_bodies().size() > 0:
		get_parent().remove_child(self)
