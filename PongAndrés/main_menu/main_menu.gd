extends Control

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _on_single_player_button_pressed() -> void:
	get_tree().change_scene_to_file("res://SinglePlayer/single_player_menu.tscn")

func _on_multiplayer_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Multiplayer/multi_player_menu.tscn")
