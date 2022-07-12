extends Node2D
var number
var p = false
func _ready():
	var file = File.new()
	file.open("res://progress.txt", file.READ)
	number = int(file.get_line())

func _process(delta):
	if number < 1.5 and !p and $blob.position.x < 0:
		var file = File.new()
		file.open("res://progress.txt", file.WRITE)
		file.store_line(str(2))
		file.close()
