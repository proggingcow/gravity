extends Control


func _process(delta):
	if get_tree().paused:
		visible = true
	else:
		visible = false
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()

func _on_Button2_button_down():
	if get_tree().paused:
		OS.window_fullscreen = !OS.window_fullscreen


func _on_Button_down():
	if get_tree().paused:
		$RichTextLabel2.visible = !$RichTextLabel.visible
		$RichTextLabel.visible = !$RichTextLabel.visible
		pass


func _on_Button3_button_down():
	get_tree().quit()
