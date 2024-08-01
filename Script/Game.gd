extends Node2D

@onready var game_container = $GameContainer


func _ready():
	game_container.get_node("Sprite2D").scale = ConstInt.resolution * 0.9


func _process(delta):
	pass
