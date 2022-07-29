extends RigidBody2D

func if_over(area):
	if area.get_overlapping_bodies().size()>0:
		return true
	return false

func _physics_process(delta):
	if linear_velocity.x < -21:
		linear_velocity.x = -21
	if linear_velocity.y < -21:
		linear_velocity.y = -21
	if linear_velocity.x > 21:
		linear_velocity.x = 21
	if linear_velocity.y > 21:
		linear_velocity.y = 21
	#slowing
	if linear_velocity.x <= -1:
		linear_velocity.x -= -1
	if linear_velocity.y <= -1:
		linear_velocity.y -= -1
	if linear_velocity.x >= 1:
		linear_velocity.x -= 1
	if linear_velocity.y >= 1:
		linear_velocity.y -= 1

export var move = Vector2()
export var face = "left"
export var vert = "up"

func _ready():
	if face == "right":
		$Sprite.scale = -1
	move.x = abs(move.x)+1
	move.y = abs(move.y)+1

func _process(delta):
	if face == "left":
		apply_central_impulse(Vector2(-move.x,0))
	if vert == "up":
		apply_central_impulse(Vector2(0,-move.y))
	if face == "right":
		apply_central_impulse(Vector2(move.x,0))
	if face == "down":
		apply_central_impulse(Vector2(0,move.y))
	if if_over($top):
		vert = "down"
	if if_over($bottom):
		vert = "up"
	if if_over($right):
		face = "left"
		$Sprite.scale.x = 1
	if if_over($left):
		face = "right"
		$Sprite.scale.x = -1
