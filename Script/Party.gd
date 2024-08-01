extends CanvasLayer

@export var party_size = 12


func _ready():
	$Background.size = ConstInt.resolution
	var frame_size = $Background.size.x / party_size
	for member in range(party_size):
		#duplicate(sample_frame)
		var party_frame = load("res://Scenes/GUI/party_frame.tscn").instantiate()
		add_child(party_frame)
		var party_member = get_child(member)
		party_member.size.x = frame_size
		#party_frame.set_position = Vector2(member * frame_size, 0)
		#$HBoxContainer.add_child(party_frame)
		#$HBoxContainer.get_child(member)
		#print($HBoxContainer.get_child(member))
		#$HBoxContainer.get_child(member).size.x = frame_size
