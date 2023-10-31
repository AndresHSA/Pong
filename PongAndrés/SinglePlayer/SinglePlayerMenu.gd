extends Control

@onready var player_name: TextEdit = %PlayerName
@onready var player_color: ColorPickerButton = %PlayerColor




func _on_easy_button_pressed() -> void:
	GameManager.player1_name = player_name.text
	GameManager.easy_mode()
	get_tree().change_scene_to_file("res://level/level.tscn")

func _on_medium_button_pressed() -> void:
	GameManager.player1_name = player_name.text
	GameManager.medium_mode()
	get_tree().change_scene_to_file("res://level/level.tscn")

func _on_hard_button_pressed() -> void:
	GameManager.player1_name = player_name.text
	GameManager.hard_mode()
	get_tree().change_scene_to_file("res://level/level.tscn")

func _on_back_button_pressed() -> void:
	GameManager.player1_name = player_name.text
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")

func _on_player_color_color_changed(color: Color) -> void:
	GameManager.change_color= color
