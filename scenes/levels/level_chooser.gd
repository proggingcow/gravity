extends Node2D
func _ready():
	var number = 0
	var file = File.new()
	file.open("res://../.blobjumpprogress.txt", file.READ)
	number = int(file.get_line())
	file.close()
	if number == 0:
		file.open("res://../.blobjumpprogress.txt", file.WRITE)
		file.store_line(str(0))
		file.close()
	if number > 0.5:
		remove_child($Sprite2)
	if number > 1.5:
		remove_child($Sprite3)
	if number > 2.5:
		remove_child($Sprite14)
