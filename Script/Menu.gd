class_name Menu
extends Node2D

@onready var menu: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings
@onready var load_game: VBoxContainer = $LoadGame
@onready var new_game: VBoxContainer = $NewGame


func _ready():
	set_menu_visibility(menu)
	
	menu.get_node("NewGame").pressed.connect(menu_to_new_game)
	menu.get_node("LoadGame").pressed.connect(menu_to_load_game)
	menu.get_node("Settings").pressed.connect(menu_to_settings)
	menu.get_node("ExitGame").pressed.connect(exit_game)

	new_game.get_node("PlayerCount").tab_changed.connect(set_player_count)
	new_game.get_node("PlayerName").text_changed.connect(set_player_name)
	new_game.get_node("BackToMain").pressed.connect(new_campaign_to_menu)
	
	load_game.get_node("BackToMain").pressed.connect(load_campaign_to_menu)

	settings.get_node("ToggleFullScreen").pressed.connect(toggle_fullscreen)
	settings.get_node("ChooseArray").item_selected.connect(choose_array)
	settings.get_node("BackToMain").pressed.connect(settings_to_menu)



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
# New Campaign          #
#########################
func new_campaign_to_menu():
	set_menu_visibility(menu)


func set_player_count(i: int) -> int:
	return i + 1


func set_player_name() -> String:
	return new_game.get_node("PlayerName").text



#########################
# Load Campaign         #
#########################
func load_campaign_to_menu():
	set_menu_visibility(menu)



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
		


func choose_array(i: int):
	#TODO: Array
	print(i)
	pass



#########################
# General Methods       #
#########################
func set_menu_visibility(vbox: VBoxContainer):
	var i: int = vbox.get_index()
	for child in get_children():
		child.visible = true if child.get_index() == i else false
