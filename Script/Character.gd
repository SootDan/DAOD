class_name Character
extends Node

"""
Basic Info
"""
# https://media.wizards.com/2016/dnd/downloads/5E_CharacterSheet_Fillable.pdf
@onready var char_info = {
	"Name": "Name McNameface",
	"Player":  "Player McPlayerface",
	"Class": CharClass.char_class.BARD,
	"Race": CharRace.race.DRAGONBORN,
	"Background": CharBG.bg.CHARLATAN,
	"Alignment": CharAlign.alignment.LAWFUL_GOOD,
}

"""
Stats and Abilities
"""
@onready var char_stats = {
	"Max HP": -1,
	"Current HP": -1,
	"AC": -1,
	"Level": -1,
	"XP": -1,
}

@onready var char_abilities = {
	"Strength": -1,
	"Dexterity": -1,
	"Constitution": -1,
	"Intelligence": -1,
	"Wisdom": -1,
	"Charisma": -1,
}

@onready var char_skills = {
	"Athletics": calc_modifier(char_abilities["Strength"]),
	"Acrobatics": calc_modifier(char_abilities["Dexterity"]),
	"Sleight of Hand": calc_modifier(char_abilities["Dexterity"]),
	"Stealth": calc_modifier(char_abilities["Dexterity"]),
	"Arcana": calc_modifier(char_abilities["Intelligence"]),
	"History": calc_modifier(char_abilities["Intelligence"]),
	"Nature": calc_modifier(char_abilities["Intelligence"]),
	"Religion": calc_modifier(char_abilities["Intelligence"]),
	"Animal Handling": calc_modifier(char_abilities["Intelligence"]),
	"Insight": calc_modifier(char_abilities["Intelligence"]),
	"Medicine": calc_modifier(char_abilities["Intelligence"]),
	"Perception": calc_modifier(char_abilities["Intelligence"]),
	"Survival": calc_modifier(char_abilities["Intelligence"]),
	"Deception": calc_modifier(char_abilities["Intelligence"]),
	"Intimidation": calc_modifier(char_abilities["Intelligence"]),
	"Performance": calc_modifier(char_abilities["Intelligence"]),
}

"""
Equipment
"""
#TODO: Equipment

"""
Attacks / Spells
"""
#TODO: Attacks/Spells


func calc_modifier(ability: int) -> int:
	# https://roll20.net/compendium/dnd5e/Ability%20Scores#content
	return (ability - 10) / 2
