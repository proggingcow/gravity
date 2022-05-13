extends Area2D

export var flow = Vector2(0,-5)
export var rise = Vector2(0,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	for b in get_overlapping_bodies():
		if b.has_method("apply_central_impulse"):
			b.apply_central_impulse(flow)
	position.x += rise.x
	position.y += rise.y
