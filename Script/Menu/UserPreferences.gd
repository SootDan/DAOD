class_name UserPreferences
extends Resource

@export var toggle_fullscreen: bool = 0
@export var choose_array: int = 1
@export var volume = {
	"MasterVolume": 100,
	"SFXVolume": 100,
	"UIVolume": 100,
}


func save():
	ResourceSaver.save(self, "user://user_prefs.tres")


static func load_or_create() -> UserPreferences:
	var res: UserPreferences = load("user://user_prefs.tres") as UserPreferences
	if !res:
		res = UserPreferences.new()
	return res
