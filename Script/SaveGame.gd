class_name SaveGame
extends Resource

const save_game_path = "user://savegame.tres"
@export var character: Resource
@export var inventory: Resource


func save_game():
	ResourceSaver.save(save_game_path)


static func load_save():
	if ResourceLoader.exists(save_game_path):
		return load(save_game_path)
