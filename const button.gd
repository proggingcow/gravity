extends Area2D

var past = false
export var mode = "destroy"
# Declare member variables here. Examples:
var p = false
# var b = "text"
func _ready():
	if mode == "create":
		past = true
var ch
# Called when the node enters the scene tree for the first time.
func pr():
	if (get_overlapping_bodies().size() >0):
		return true
	else:
		return false

# warning-ignore:unused_argument
func _process(delta):
	p = pr()
	$Sprite.visible = !p
	if mode=="destroy":
		if past == false and p == true:
			ch = $Ob
			remove_child($Ob)
		if past == true and p == false:
			add_child(ch)
	elif mode == "create":
		if past == true and p == false:
			ch = $Ob
			remove_child($Ob)
		if past == false and p == true:
			add_child(ch)
	past = p
