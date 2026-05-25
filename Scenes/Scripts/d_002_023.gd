extends Control

func _ready() -> void:
	CursorManager.set_normal()
	get_tree().create_timer(10.0).timeout.connect(func():
		get_tree().change_scene_to_file("res://Scenes/Game/d_002_024.tscn")
	
		AudioManager.play_bgm("runrabbit")
		)
	
