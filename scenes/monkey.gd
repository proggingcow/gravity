extends RigidBody2D

func _input(event):
	if event is InputEventKey :
		if event.pressed and event.scancode == KEY_UP and ($Feet.get_overlapping_bodies().size() > 0) :
				apply_central_impulse(Vector2(0,-200))

func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		apply_central_impulse(Vector2(-3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(-7,3))
			
	if Input.is_key_pressed(KEY_RIGHT):
		apply_central_impulse(Vector2(3,0))
		if $Feet.get_overlapping_bodies().size()>0:
			apply_central_impulse(Vector2(7,3))
	var areas = get_overlapping_bodies()
	if areas.size()>0:
		for x in areas:
			if x.collision_layer & 1 << 5:
				print("Hit")
			
