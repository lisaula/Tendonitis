
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

var already
var animable

func _ready():
	already = false
	animable = get_node("AnimatedSprite")
	

func _fixed_process(delta):
	already = get_node("AnimatedSprite").getAlreadyToGo()
	print(already)
	
