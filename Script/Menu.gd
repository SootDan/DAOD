class_name Menu
extends Node2D

@onready var main: VBoxContainer = $Main
@onready var settings: VBoxContainer = $Settings


func _ready():
	main.visible = true
	settings.visible = false


func change_to_settings():
	main.visible = false
	settings.visible = true
	

func change_to_menu():
	main.visible = true
	settings.visible = false
