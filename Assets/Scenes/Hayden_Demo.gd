extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#self.set_process(true)
	self.set_process_input(true)

func _input(event):
	if(event.type == InputEvent.KEY):
		var curPos = self.get_pos()
		
		if(event.scancode == KEY_D):
			curPos.x += 10
			self.set_pos(curPos)
			#self.get_tree().set_input_as_handled()
	if(event.type == InputEvent.KEY):
		var curPos = self.get_pos()
		
		if(event.scancode == KEY_A):
			curPos.x -=10
			self.set_pos(curPos)
			#self.get_tree().set_input_as_handled()
	if(event.type == InputEvent.KEY):
		var curPos = self.get_pos()
		
		if(event.scancode == KEY_W):
			curPos.y -=10
			self.set_pos(curPos)
			#self.get_tree().set_input_as_handled()
	if(event.type == InputEvent.KEY):
		var curPos = self.get_pos()
		
		if(event.scancode == KEY_S):
			curPos.y +=10
			self.set_pos(curPos)
			#self.get_tree().set_input_as_handled()

func _process(delta):
	if(Input.is_key_pressed(KEY_ESCAPE)):
		self.get_tree().quit()