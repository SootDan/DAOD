class_name Menu
extends Node2D

@onready var main: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings


func _ready():
	main.visible = true
	settings.visible = false


#########################
# Main Menu             #
#########################
func change_to_settings():
	main.visible = false
	settings.visible = true


func exit_game():
	get_tree().quit()


#########################
# Settings Menu         #
#########################
func change_to_menu():
	main.visible = true
	settings.visible = false


func toggle_fullscreen():
	if not DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)

