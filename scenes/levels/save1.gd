extends Node2D
var number
var p = false
func _ready():
	var file = File.new()
	file.open("res://../.blobjumpprogress.txt", file.READ)
	number = int(file.get_line())


func _process(delta):
	if number < 0.5 and !p and $blob.position.x > 1025:
		var file = File.new()
		file.open("res://../.blobjumpprogress.txt", file.WRITE)
		file.store_line(str(1))
		file.close()
	print($blob.position.x)
