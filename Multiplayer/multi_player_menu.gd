extends Control

@onready var player_name: TextEdit = %PlayerName
@onready var player_name_1: TextEdit = %PlayerName1

# Called when the node enters the scene tree for the first time.

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")


func _on_start_button_pressed() -> void:
	GameManager.player1_name =player_name_1.text
	
