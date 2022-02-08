extends RigidBody2D

func _input(event):
	if event is InputEventKey :
		if event.pressed and event.scancode == KEY_UP and ($Feet.get_overlapping_bodies().size() > 0) :
			apply_central_impulse(Vector2(0,-200))
		if event.pressed and event.scancode == KEY_R:
			get_tree().reload_current_scene()
		if event.pressed and event.scancode == KEY_Q:
			get_tree().quit()

func _physics_process(delta):
	if linear_velocity.y < - 210:
		linear_velocity.y = -210
	

func _process(_delta):
	if Input.is_key_pressed(KEY_LEFT):
		apply_central_impulse(Vector2(-3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(-7,3))
	
	
	if Input.is_key_pressed(KEY_RIGHT):
		apply_central_impulse(Vector2(3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(7,3))

func _on_Suround_area_entered(_b):
	get_tree().reload_current_scene()



func _on_Area2D5_area_entered(area):
	pass # Replace with function body.
