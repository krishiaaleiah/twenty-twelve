extends Control

func _ready() -> void:
	AudioManager.stop_all_bgm()
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://Scenes/Game/F001_01.tscn")
