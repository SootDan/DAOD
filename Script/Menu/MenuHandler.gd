class_name MenuHandler
extends VBoxContainer

@onready var menu: VBoxContainer = $Main

func set_menu_visibility(vbox: VBoxContainer):
	var i: int = vbox.get_index()
	for child in get_children():
		child.visible = true if child.get_index() == i else false
