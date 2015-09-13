
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var cont=25
var n
func _ready():
	n=get_node("HSlider")




func _on_TextureButton_pressed():
	cont=cont+1
	print(cont)
	n.set_val(cont)


func _on_HSlider_value_changed( value ):
	pass
