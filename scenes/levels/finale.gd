extends Node2D


# Declare member variables here. Examples:
# var a = 2
var p = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	p = $blob.position.y
	if p >0:
		$blob/c1.current = true
	elif p >-600:
		$blob/c2.current = true
