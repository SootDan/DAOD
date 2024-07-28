@tool
extends Panel

@export var party_size = 6


func _ready():
	var frame_size = size.x / party_size
	
	for member in range(party_size):
		#duplicate(sample_frame)
		var party_frame = load("res://Scenes/GUI/party_frame.tscn").instantiate()
		$HBoxContainer.add_child(party_frame)
		var party_member = $HBoxContainer.get_child(member)
		party_member.size.x = frame_size
		#party_frame.set_position = Vector2(member * frame_size, 0)
		#$HBoxContainer.add_child(party_frame)
		#$HBoxContainer.get_child(member)
		#print($HBoxContainer.get_child(member))
		#$HBoxContainer.get_child(member).size.x = frame_size
