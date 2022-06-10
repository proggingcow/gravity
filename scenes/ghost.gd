extends Area2D

export var move = Vector2()

export var right = false

func _ready():
	if right == true:
		$Sprite.scale.x = -1

func _process(_delta):
	position.x += move.x
	position.y += move.y
	if $top.get_overlapping_bodies() == 0:
		move.y = abs(move.y)
	if $butt.get_overlapping_bodies() == 0:
		move.y = -abs(move.y)
	if $left.get_overlapping_bodies() == 0:
		move.x = abs(move.x)
		$Sprite.scale.x = -1
	if $right.get_overlapping_bodies() == 0:
		move.x = -abs(move.x)
		$Sprite.scale.x = 1
