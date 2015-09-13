
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var cont=25
var blue_taps=0
var red_taps=0
var n
var time
var timer
var time_text
var global
var winner=false
var winner2=false
var text
var text2
var go
func _ready():
	go = get_node("go")
	time_text = get_node("HUD/Time")
	n=get_node("HSlider")
	timer = get_node("Timer")
	global=get_node("/root/global")
	text = get_node("HUD/Label")
	text2 = get_node("HUD/Label 2")
	#text2.set_text("Taps: 0")
	#text.set_text("Taps: 0")
	#time_text.set_text("Time: 0")
	set_fixed_process(true)
	time =0
	#timer.start()
	
func _fixed_process(delta):
	go._fixed_process(delta)
	if(cont==50):
		print("blue won")
		winner =true
	if(cont==0):
		print("Red won")
		winner2 =true
	if(winner):
		#self.get_tree().set_pause(true)
		global.setBlueTaps(blue_taps)
		global.setWinner("BLUE WON")
		global.setTime(time)
		get_node("/root/global").setScene("res://Statistics.scn")
	if(winner2):
		#self.get_tree().set_pause(true)
		global.setRedTaps(red_taps)
		global.setWinner("RED WON")
		global.setTime(time)
		global.setScene("res://Statistics.scn")
	
	


func _on_TextureButton_pressed():
	cont=cont+1
	blue_taps=blue_taps+1
	print(cont)
	n.set_val(cont)
	text.set_text(str("Taps: ",blue_taps))


func _on_TextureButton_2_pressed():
	red_taps=red_taps+1
	cont=cont-1
	n.set_val(cont)
	pass # replace with function body
	text2.set_text(str("Taps: ",red_taps))


func _on_TouchScreenButton_pressed():
	cont=cont+1
	n.set_val(cont)


func _on_TouchScreenButton_2_pressed():
	cont=cont-1
	n.set_val(cont)


func _on_Timer_timeout():
	time +=1
	time_text.set_text(str("Time: ",time))
	pass # replace with function body


func _on_TextureButton_3_pressed():
	get_node("/root/global").setScene("res://game_scene.scn")
