extends VBoxContainer


func load_settings(user_prefs: UserPreferences):
	get_node("ChooseArray").selected = user_prefs.choose_array
	get_node("MasterVolume").value = user_prefs.volume["MasterVolume"]
	get_node("SFXVolume").value = user_prefs.volume["SFXVolume"]
	get_node("UIVolume").value = user_prefs.volume["UIVolume"]
