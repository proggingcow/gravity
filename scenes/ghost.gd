extends Area2D

var move = 0.0

func _process(_delta):
	position.x += move
	if $left.get_overlapping_bodies():
		move = abs(move)
		$Sprite.scale.x = -0.5
	if $right.get_overlapping_bodies():
		move = -abs(move)
		$Sprite.scale.x = 0.5
