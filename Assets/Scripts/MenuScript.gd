extends Panel

func _ready():
	pass
	
func _on_Start_Game_pressed():
	get_tree().change_scene("res://Assets/Scenes/Hayden_Demo.tscn")
	print("button pressed")
	pass