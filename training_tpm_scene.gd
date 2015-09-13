
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

var taps = 0
var time = 0
var taps_in_second = 0

var lbl_taps
var lbl_time
var lbl_tpm

var timer

func _ready():
	# Initialization here
	lbl_taps = get_node("label_taps")
	lbl_time = get_node("label_time")
	lbl_tpm = get_node("label_tpm")
	
	timer = get_node("Timer")
	pass




func _on_Timer_timeout():
	var lbl = get_node("label_time")
	time+=1
	lbl.set_text(str("Time: ",time))
	
	var lbl_tpm = get_node("label_tpm")
	lbl_tpm.set_text(str("Current TPM: ",taps_in_second*60))
	
	taps_in_second = 0


func _on_Button_pressed():
	taps += 1
	taps_in_second += 1
	var lbl_taps = get_node("label_taps")
	lbl_taps.set_text(str("Taps: ",taps))
	if(timer.get_time_left()==0):
		timer.start()


func _on_button_back_pressed():
	get_node("/root/global").setScene("res://mainmenu_scene.scn")


func _on_button_reset_pressed():
	taps = 0
	time = 0
	taps_in_second = 0
	
	lbl_taps.set_text("Taps: 0")
	
	lbl_time.set_text("Time: 0")
	
	lbl_tpm.set_text("Current TPM: 0")
	
	timer.stop()
