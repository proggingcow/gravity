extends RigidBody2D


func _physics_process(delta):
	if linear_velocity.y < - 210:
		linear_velocity.y = -210

func _process(_delta):
	if Input.is_key_pressed(KEY_A):
		apply_central_impulse(Vector2(-3,0))
		if $Sprite3.scale.x == -1:
			$Sprite3.scale.x = 1
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(-7,3))
	if position.y >700:
		get_tree().reload_current_scene()
	if Input.is_key_pressed(KEY_S):
		apply_central_impulse(Vector2(0,1))
		if $water_zone.get_overlapping_areas().size() != 0:
			apply_central_impulse(Vector2(0,3))
	if Input.is_key_pressed(KEY_W): 
		if $water_zone.get_overlapping_areas().size() != 0:
			apply_central_impulse(Vector2(0,-4))
		elif ($Feet.get_overlapping_bodies().size() > 0):
			apply_central_impulse(Vector2(0,-180))
			$AudioStreamPlayer2D.play()
	if Input.is_key_pressed(KEY_D):
		apply_central_impulse(Vector2(3,0))
		if $Sprite3.scale.x == 1:
			$Sprite3.scale.x = -1
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(7,3))

func _on_Suround_area_entered(_b):
	get_tree().reload_current_scene()



func _on_Area2D5_area_entered(area):
	pass # Replace with function body.
