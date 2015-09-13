
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var player1_button_annoy
var player1_button_burst
var player1_button_endure

func _ready():
	player1_button_annoy = get_node("button_annoy")
	player1_button_burst = get_node("button_burst")
	player1_button_endure = get_node("button_endure")


func _on_Button_pressed():
	get_node("/root/global").setScene("res://game_scene.scn")

func _on_button_annoy_pressed():
	player1_button_annoy.set_pressed(true)
	player1_button_burst.set_pressed(false)
	player1_button_endure.set_pressed(false)

func _on_button_burst_pressed():
	player1_button_annoy.set_pressed(false)
	player1_button_burst.set_pressed(true)
	player1_button_endure.set_pressed(false)


func _on_button_endure_pressed():
	player1_button_annoy.set_pressed(false)
	player1_button_burst.set_pressed(false)
	player1_button_endure.set_pressed(true)
