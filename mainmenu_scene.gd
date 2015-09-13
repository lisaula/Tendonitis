
extends VBoxContainer

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	pass




func _on_Button_pressed():
	get_node("/root/global").setScene("res://game_scene.scn")
