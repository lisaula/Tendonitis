
extends RichTextLabel

# member variables here, example:
# var a=2
# var b="textvar"
var p=0
func _ready():
	self.add_text(str("Taps: ",p))
	set_fixed_process(true)
	
func _fixed_process(delta):
	self.add_text(str("Taps: ",p))

func _setTaps(value):
	p=value 
