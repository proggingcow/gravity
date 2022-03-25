extends RichTextLabel

func _ready():
	pass 

func _process(delta):
	if !get_parent().has_node("blob"):
		visible = true

