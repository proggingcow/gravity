extends Area2D

var p = false
var mykid
# Called when the node enters the scene tree for the first time.
func _ready():
	for ch in get_children():
		if ch.name == "Ob":
			remove_child(ch)
		mykid = ch

# warning-ignore:unused_argument
func _process(delta):
	if p == false and get_overlapping_bodies().size() > 0:
# warning-ignore:standalone_expression
		p==true
		$Sprite.texture = load("res://assets/pbutton.png")
		add_child(mykid.duplicate())
