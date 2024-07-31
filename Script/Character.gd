class_name Character
extends Node

"""
Basic Info
"""
# https://media.wizards.com/2016/dnd/downloads/5E_CharacterSheet_Fillable.pdf
@onready var char_name: String = "Name McNameface"
@onready var char_player: String = "Player McPlayerface"
@onready var char_class = CharClass.char_class.BARD
@onready var char_race = CharRace.race.DRAGONBORN
@onready var char_bg = CharBG.bg.CHARLATAN
@onready var char_alignment = CharAlign.alignment.LAWFUL_GOOD

"""
Stats and Abilities
"""
@onready var char_max_hp: int = -1
@onready var char_cur_hp: int = -1
@onready var char_ac: int = -1
@onready var char_lvl: int = -1
@onready var char_xp: int = -1

@onready var char_str: int = -1
@onready var char_dex: int = -1
@onready var char_con: int = -1
@onready var char_int: int = -1
@onready var char_wis: int = -1
@onready var char_cha: int = -1

"""
Skills
"""
@onready var char_athl: int = calc_modifier(char_str)

@onready var char_acro: int = calc_modifier(char_dex)
@onready var char_soha: int = calc_modifier(char_dex)
@onready var char_stea: int = calc_modifier(char_dex)

@onready var char_arca: int = calc_modifier(char_int)
@onready var char_hist: int = calc_modifier(char_int)
@onready var char_natu: int = calc_modifier(char_int)
@onready var char_reli: int = calc_modifier(char_int)

@onready var char_anim: int = calc_modifier(char_int)
@onready var char_insi: int = calc_modifier(char_wis)
@onready var char_medi: int = calc_modifier(char_wis)
@onready var char_perc: int = calc_modifier(char_wis)
@onready var char_surv: int = calc_modifier(char_wis)

@onready var char_dece: int = calc_modifier(char_cha)
@onready var char_inti: int = calc_modifier(char_cha)
@onready var char_perf: int = calc_modifier(char_cha)


func calc_modifier(ability: int) -> int:
	# https://roll20.net/compendium/dnd5e/Ability%20Scores#content
	return (ability - 10) / 2
