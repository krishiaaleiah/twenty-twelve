extends Control

func _ready() -> void:
	await get_tree().create_timer(14).timeout
	get_tree().change_scene_to_file("res://Scenes/ExtraScenes/main_menu.tscn")
