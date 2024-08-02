class_name Menu
extends Node2D

@onready var main: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings
@onready var load_game: VBoxContainer = $LoadGame
@onready var new_game: VBoxContainer = $NewGame


func _ready():
	set_menu_visibility(main)



#########################
# Main Menu             #
#########################
func menu_to_settings():
	set_menu_visibility(settings)


func exit_game():
	get_tree().quit()



#########################
# Settings Menu         #
#########################
func settings_to_menu():
	set_menu_visibility(main)


func toggle_fullscreen():
	if not DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)



#########################
# New Campaign         #
#########################
# TODO: All of it


#########################
# Load Campaign         #
#########################
# TODO: All of it


#########################
# General Methods       #
#########################
func set_menu_visibility(menu: VBoxContainer):
	var i: int = menu.get_index()
	for child in get_children():
		child.visible = true if child.get_index() == i else false
