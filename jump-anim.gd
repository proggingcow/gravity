extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var x = 0.4

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	x -= delta
	if x <= 0.3:
		texture = load("res://assets/jump-anim/2.png")
	if x <= 0.2:
		texture = load("res://assets/jump-anim/3.png")
	if x <= 0.1:
		texture = load("res://assets/jump-anim/4.png")
	if x <= 0:
		get_parent().remove_child(self)
