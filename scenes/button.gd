extends Area2D

var p = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# warning-ignore:unused_argument
func _process(delta):
	if p == false:
		if get_overlapping_bodies().size() > 0:
# warning-ignore:standalone_expression
			p==true
			$Sprite.texture = load("res://assets/pbutton.png")
			remove_child($Sprite2)
			
