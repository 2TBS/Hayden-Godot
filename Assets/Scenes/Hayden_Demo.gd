extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_process(true)

func _process(delta):
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
		curPos.y += 10 * delta
		self.set_pos(curPos)