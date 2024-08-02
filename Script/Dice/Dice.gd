class_name Dice
extends Node

enum roll_type {
	STANDARD,
	ADVANTAGE,
	DISADVANTAGE
}


func dice_output(roll_type, eyes: int, modifier: int, amount: int = 1) \
-> Array[int]:
	var output: Array[int]
	var roll: int = randi_range(1, eyes)
	
	if roll_type == roll_type.STANDARD:
		for i in range(amount):
			output.append(roll + modifier)
		return output
	else:
		for i in range(2):
			output.append(roll + modifier)
		return max(output) if roll_type == roll_type.ADVANTAGE \
		else min(output)
