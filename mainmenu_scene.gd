
extends VBoxContainer

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	pass




func _on_Button_pressed():
	get_node("/root/global").setScene("res://character_select/character_select_scene.scn")
	#get_node("/root/global").setScene("res://game_scene.scn")


func _on_Button_2_pressed():
	get_node("/root/global").setScene("res://training_tpm_scene.scn")


func _on_button_exit_pressed():
	get_tree().quit()
