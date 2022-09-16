extends RigidBody2D

var jump = false
var particle
func _physics_process(delta):
	if linear_velocity.y < - 210:
		linear_velocity.y = -210

func _ready():
	particle = preload("res://scenes/jump-anim.tscn")

var x = false
var t = false
func _process(_delta):
	if Input.is_key_pressed(KEY_LEFT):
		apply_central_impulse(Vector2(-3,0))
		if $Sprite3.scale.x == -1:
			$Sprite3.scale.x = 1
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(-5,1))
			x = true
			t=true
	if position.y >700:
		get_tree().reload_current_scene()
	if Input.is_key_pressed(KEY_DOWN):
		apply_central_impulse(Vector2(0,2))
		if $water_zone.get_overlapping_areas().size() != 0:
			apply_central_impulse(Vector2(0,3))
	if Input.is_key_pressed(KEY_UP):
		if $water_zone.get_overlapping_areas().size() != 0:
			apply_central_impulse(Vector2(0,-4))
			jump = true
		elif ($Feet.get_overlapping_bodies().size() > 0) and jump == true:
			apply_central_impulse(Vector2(0,-180))
			$AudioStreamPlayer2D.play()
			jump = false
			var JA = particle.instance()
			JA.position.x = position.x
			JA.position.y = position.y + 8
			get_parent().add_child(JA)
	else:
		jump = true
	if Input.is_key_pressed(KEY_RIGHT):
		apply_central_impulse(Vector2(3,0))
		if $Sprite3.scale.x == 1:
			$Sprite3.scale.x = -1
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(5,1))
			x = true
			t=true
	if x:
		$Sprite3/AnimatedSprite.visible = true
	if !x:
		$Sprite3/AnimatedSprite.visible = false
	x=false
	if t and !$step.playing:
		$step.playing = true
	if !t:
		$step.playing = false
	t=false
	

func _on_Suround_area_entered(_b):
	get_tree().reload_current_scene()



