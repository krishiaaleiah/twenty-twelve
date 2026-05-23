extends Control

@onready var intro: VideoStreamPlayer = $SubViewport/SubViewport/VideoStreamPlayer

func _ready() -> void:
	intro.finished.connect(_on_intro_finished)
	
func _on_intro_finished():
	get_tree().change_scene_to_file("res://Scenes/ExtraScenes/police_report.tscn")
