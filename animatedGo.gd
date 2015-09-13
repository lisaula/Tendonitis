
extends AnimatedSprite

# member variables here, example:
# var a=2
# var b="textvar"
var tempElapsed = 0

var time = 0
var timer
var alreadyToGo = false

func _ready():
   set_process(true)
   
func _process(delta):
	set_frame(time)

func _on_Timer_timeout():
	if(time<3):
		time+=1
	else:
		alreadyToGo=true
	
	pass # replace with function body
	
func getAlreadyToGo():
	print("alreadyToGo")
	print(alreadyToGo)
	return alreadyToGo
	pass
