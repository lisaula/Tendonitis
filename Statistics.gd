
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var winner
var time
var taps
var tpm
var winner_text
var taps_text
var tpm_text
var global

func _ready():
	global = get_node("/root/global")
	winner_text = get_node("Winner")
	taps_text = get_node("Taps")
	tpm_text = get_node("TPM")
	winner = global.winner
	winner_text.set_text(winner)
	if(winner=="BLUE WON"):
		taps = global.blue_cont
	else:
		taps = global.red_cont
	taps_text.set_text(str(taps))
	time = global.time
	tpm = (taps/time)*60
	tpm_text.set_text(str("TPM: ",tpm))

func _on_BackMenu_pressed():
	global.setScene("res://mainmenu_scene.scn")
	print("entro")


func _on_TextureButton_pressed():
	global.setScene("res://game_scene.scn")
