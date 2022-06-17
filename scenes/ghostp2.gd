extends Node2D


export var right = false
export var move = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	if right:
		$Area2D/Sprite.scale.x = -1
	$Area2D.move = move * -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
