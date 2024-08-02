extends Node2D

var progress: Array
var menu
var load_status = 0


func _ready():
	menu = "res://Scenes/Menu.tscn"
	ResourceLoader.load_threaded_request(menu)


func _process(_delta):
	load_status = ResourceLoader.load_threaded_get_status(menu, progress)
	$Progress.text = str(floor(progress[0] * 100)) + "%"
	if load_status == ResourceLoader.THREAD_LOAD_LOADED:
		print("Loaded!")
		var change_to_menu = ResourceLoader.load_threaded_get(menu)
		get_tree().change_scene_to_packed(change_to_menu)
