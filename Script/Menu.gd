class_name Menu
extends Node2D

@onready var menu: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings
@onready var load_game: VBoxContainer = $LoadGame
@onready var new_game: VBoxContainer = $NewGame


func _ready():
	set_menu_visibility(menu)
	#settings.get_node("ChooseArray").



#########################
# Main Menu             #
#########################
func menu_to_new_game():
	set_menu_visibility(new_game)


func menu_to_load_game():
	set_menu_visibility(load_game)


func menu_to_settings():
	set_menu_visibility(settings)


func exit_game():
	get_tree().quit()



#########################
# Settings Menu         #
#########################
func settings_to_menu():
	set_menu_visibility(menu)


func toggle_fullscreen():
	if not DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)



#########################
# New Campaign         #
#########################
func new_campaign_to_menu():
	set_menu_visibility(menu)



#########################
# Load Campaign         #
#########################
func load_campaign_to_menu():
	set_menu_visibility(menu)


#########################
# General Methods       #
#########################
func set_menu_visibility(vbox: VBoxContainer):
	var i: int = vbox.get_index()
	for child in get_children():
		child.visible = true if child.get_index() == i else false
