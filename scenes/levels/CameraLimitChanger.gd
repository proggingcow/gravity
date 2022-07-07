extends Camera2D

export var left = 0.0
export var right = 0.0
export var bottom = 0.0
export var top = 0.0

func _process(delta):
	limit_left += left
	limit_right += right
	limit_bottom += bottom
	limit_top += top
