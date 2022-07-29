extends Node2D
func _ready():
	var file = File.new()
	file.open("res://.blobjumpprogress.txt", file.READ)
	var number = int(file.get_line())
	file.close()
	if number > 0.5:
		remove_child($Sprite2)
	if number > 1.5:
		remove_child($Sprite3)
