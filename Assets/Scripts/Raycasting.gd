extends RayCast2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.set_process(true)

func _process(delta):
	if(is_colliding()):
		get_collider().is_seen = true
