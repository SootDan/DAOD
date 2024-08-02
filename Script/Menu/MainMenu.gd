extends MenuHandler


func menu_to_new_game():
	set_menu_visibility(new_game)
	print("rargh")


func menu_to_load_game():
	set_menu_visibility(load_game)


func menu_to_settings():
	set_menu_visibility(settings)


func exit_game():
	get_tree().quit()
