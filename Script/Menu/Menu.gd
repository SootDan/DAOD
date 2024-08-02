class_name Menu
extends Node2D

@onready var menu: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings
@onready var load_game: VBoxContainer = $LoadGame
@onready var new_game: VBoxContainer = $NewGame

@onready var user_prefs: UserPreferences


func _ready():
	user_prefs = UserPreferences.load_or_create()
	settings.load_settings(user_prefs)

	set_menu_visibility(menu)
	
	menu.get_node("NewGame").pressed.connect(menu_to_new_game)
	menu.get_node("LoadGame").pressed.connect(menu_to_load_game)
	menu.get_node("Settings").pressed.connect(menu_to_settings)
	menu.get_node("ExitGame").pressed.connect(exit_game)

	new_game.get_node("PlayerCount").tab_changed.connect(set_player_count)
	new_game.get_node("CampaignName").text_changed.connect(set_player_name)
	new_game.get_node("BackToMain").pressed.connect(new_campaign_to_menu)
	
	load_game.get_node("BackToMain").pressed.connect(load_campaign_to_menu)

	settings.get_node("ToggleFullScreen").pressed.connect(toggle_fullscreen)
	settings.get_node("ChooseArray").item_selected.connect(choose_array)
	settings.get_node("MasterVolume").value_changed.connect(\
	change_volume.bind("MasterVolume"))
	settings.get_node("SFXVolume").value_changed.connect(\
	change_volume.bind("SFXVolume"))
	settings.get_node("UIVolume").value_changed.connect(\
	change_volume.bind("UIVolume"))
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
	return new_game.get_node("CampaignName").text



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
	if not DisplayServer.window_get_mode() == \
	DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		user_prefs.toggle_fullscreen = true
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
		user_prefs.toggle_fullscreen = false
	user_prefs.save()


func choose_array(i: int):
	user_prefs.choose_array = i
	user_prefs.save()


func change_volume(f: float, bus: String):
	user_prefs.volume[bus] = f
	print(user_prefs.volume[bus])
	user_prefs.save()


#########################
# General Methods       #
#########################
func set_menu_visibility(vbox: VBoxContainer):
	var i: int = vbox.get_index()
	for child in get_children():
		child.visible = true if child.get_index() == i else false
