
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var cont=25
var n
var winner=false
func _ready():
	n=get_node("HSlider")
	set_fixed_process(true)
	
func _fixed_process(delta):
	if(cont==50):
		print("blue won")
		winner =true
	if(cont==0):
		print("Red won")
		winner =true
	if(winner):
		self.get_tree().set_pause(true)


func _on_TextureButton_pressed():
	cont=cont+1
	print(cont)
	n.set_val(cont)
	


func _on_TextureButton_2_pressed():
	cont=cont-1
	n.set_val(cont)
	pass # replace with function body


func _on_TouchScreenButton_pressed():
	cont=cont+1
	n.set_val(cont)


func _on_TouchScreenButton_2_pressed():
	cont=cont-1
	n.set_val(cont)
