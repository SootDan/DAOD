class_name SaveGame
extends Resource

const save_game_path = "user://savegame.tres"
@export var character: Resource
@export var inventory: Resource


func save_game(content):
	ResourceSaver.save(self, save_game_path)


func load_save():
	var file = FileAccess.open("user://save_game.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content
