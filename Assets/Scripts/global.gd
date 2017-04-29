extends Node

#The currently active scene
var currentScene = null

#just some data for our game.  It could be HPs, Alignment, Direction, etc...
var PlayerName = "Mike"


func _ready():
   #On load set the current scene to the last scene available
   currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() -1)
   #Demonstrate setting a global variable.
   Globals.set("MAX_POWER_LEVEL",9000)
   
# create a function to switch between scenes 
func setScene(scene):
   #clean up the current scene
   currentScene.queue_free()
   #load the file passed in as the param "scene"
   var s = ResourceLoader.load(scene)
   #create an instance of our scene
   currentScene = s.instance()
   # add scene to root
   get_tree().get_root().add_child(currentScene)
   
   
#simple accessor function to retrieve playerName   
func getPlayerName():
   return PlayerName