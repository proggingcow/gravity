extends RigidBody2D

func _input(event):
	if event is InputEventKey :
		if event.pressed and event.scancode == KEY_W and ($Feet.get_overlapping_bodies().size() > 0) :
			apply_central_impulse(Vector2(0,-200))
		if event.pressed and event.scancode == KEY_R:
			get_tree().reload_current_scene()
		if event.pressed and event.scancode == KEY_Q:
			get_tree().quit()
		if event.pressed and event.scancode == KEY_F:
			OS.window_fullscreen = !OS.window_fullscreen

func _physics_process(delta):
	if linear_velocity.y < - 210:
		linear_velocity.y = -210
	

func _process(_delta):
	if Input.is_key_pressed(KEY_A):
		apply_central_impulse(Vector2(-3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(-7,3))
			
	if Input.is_key_pressed(KEY_S):
		apply_central_impulse(Vector2(0,1))
		if $water_zone.get_overlapping_areas().size() != 0:
			apply_central_impulse(Vector2(0,3))
	if Input.is_key_pressed(KEY_W) and $water_zone.get_overlapping_areas().size() != 0:
		apply_central_impulse(Vector2(0,-4))
	if Input.is_key_pressed(KEY_D):
		apply_central_impulse(Vector2(3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(7,3))

func _on_Suround_area_entered(_b):
	get_tree().reload_current_scene()



func _on_Area2D5_area_entered(area):
	pass # Replace with function body.
