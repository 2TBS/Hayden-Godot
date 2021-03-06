extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var is_seen = false

func _ready():
	self.set_process(true)

func _process(delta):
	if(!is_seen):
		if(Input.is_action_pressed("MOVE_RIGHT")):
			var curPos = self.get_pos()
			curPos.x += 100 * delta
			self.set_pos(curPos)
		if(Input.is_action_pressed("MOVE_LEFT")):
			var curPos = self.get_pos()
			curPos.x -= 100 * delta
			self.set_pos(curPos)
		if(Input.is_action_pressed("MOVE_UP")):
			var curPos = self.get_pos()
			curPos.y -= 100 * delta
			self.set_pos(curPos)
		if(Input.is_action_pressed("MOVE_DOWN")):
			var curPos = self.get_pos()
			curPos.y += 100 * delta
			self.set_pos(curPos)