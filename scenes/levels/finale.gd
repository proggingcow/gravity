extends Node2D
export var pos = Vector2()
export var change = false

func _ready():
	if change:
		$blob.position = pos
# Declare member variables here. Examples:
# var a = 2
var p = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	p = $blob.position.y
	if p >0:
		$blob/c1.current = true
	elif p >-600:
		$blob/c2.current = true

