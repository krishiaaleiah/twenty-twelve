extends Control

func _ready() -> void:
	AudioManager.play_bgm("ending") 
	await get_tree().create_timer(15).timeout
	get_tree().change_scene_to_file("res://Scenes/Intoduction_Clip/title_ending.tscn")
