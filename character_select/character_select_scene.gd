
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var player1_button_annoy
var player1_button_burst
var player1_button_endure

var player2_button_annoy
var player2_button_burst
var player2_button_endure

var selected_player1
var selected_player2

func _ready():
	player1_button_annoy = get_node("button_annoy")
	player1_button_burst = get_node("button_burst")
	player1_button_endure = get_node("button_endure")
	
	player2_button_annoy = get_node("button_annoy2")
	player2_button_burst = get_node("button_burst2")
	player2_button_endure = get_node("button_endure2")
	
	selected_player1=""
	selected_player2=""


func _on_Button_pressed():
	get_node("/root/global").setScene("res://game_scene.scn")

func _on_button_annoy_pressed():
	player1_button_annoy.set_pressed(true)
	player1_button_burst.set_pressed(false)
	player1_button_endure.set_pressed(false)
	selected_player1="annoy"
	if(selected_player2!=""):
		get_node("/root/global").setScene("res://new_scene.scn")
func _on_button_burst_pressed():
	player1_button_annoy.set_pressed(false)
	player1_button_burst.set_pressed(true)
	player1_button_endure.set_pressed(false)
	selected_player1="burst"
	if(selected_player2!=""):
		get_node("/root/global").setScene("res://new_scene.scn")

func _on_button_endure_pressed():
	player1_button_annoy.set_pressed(false)
	player1_button_burst.set_pressed(false)
	player1_button_endure.set_pressed(true)
	selected_player1="endure"
	if(selected_player2!=""):
		get_node("/root/global").setScene("res://new_scene.scn")

func _on_button_annoy2_pressed():
	player2_button_annoy.set_pressed(true)
	player2_button_burst.set_pressed(false)
	player2_button_endure.set_pressed(false)
	selected_player2="annoy"
	if(selected_player1!=""):
		get_node("/root/global").setScene("res://new_scene.scn")

func _on_button_burst2_pressed():
	player2_button_annoy.set_pressed(false)
	player2_button_burst.set_pressed(true)
	player2_button_endure.set_pressed(false)
	selected_player2="burst"
	if(selected_player1!=""):
		get_node("/root/global").setScene("res://new_scene.scn")

func _on_button_endure2_pressed():
	player2_button_annoy.set_pressed(false)
	player2_button_burst.set_pressed(false)
	player2_button_endure.set_pressed(true)
	selected_player2="endure"
	if(selected_player1!=""):
		get_node("/root/global").setScene("res://new_scene.scn")