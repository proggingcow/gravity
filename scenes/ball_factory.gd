extends Node2D

export var delay = 5
export var interval = 5
export var ball_velocity = Vector2(0,0)

var ballclass = preload("res://scenes/deathball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready(): 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	delay -= delta
	if delay <=0:
		delay = interval
		var p = get_parent()
		var ball = ballclass.instance()
		ball.position = position
		ball.linear_velocity = ball_velocity
		p.add_child(ball)
		
