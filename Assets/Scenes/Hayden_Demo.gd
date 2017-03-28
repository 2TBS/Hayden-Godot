extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_process(true)

func _process(delta):
	var curPos = self.getPos()
	curPos.x += 100 * delta
	
	if(curPos.x > self.get_viewport_rect().size.width + self.get_item_rect().size.width/2):
		curPos.x = -self.get_item_rect().size.width/2
	self.set_pos(curPos)