extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ($Feet.get_overlapping_bodies().size() > 0) :
		apply_central_impulse(Vector2(0,-50))
		$AudioStreamPlayer2D.play()