extends Button


# warning-ignore:unused_argument
func _process(delta):
	if get_tree().paused:
		visible = true
	else:
		visible = false


func _on_Button3_button_down():
	pass # Replace with function body.
