extends Label

@onready var parable: VideoStreamPlayer = $"../VideoStreamPlayer"
var dialogue_map = {
	"scene_one": [
		"i saved you",
		"you were alone on that area",
		"i gave you this shelter",
		"don't worry my child",
		"you don't need to escape",
		"you are safe here",
		"i am you r ang el a acva qaf sacefma fesmk help me"
	]
}

func _ready() -> void:
	AudioManager.stop_all_bgm()
	InventoryUi.hide()
	play_dialogue("scene_one")

func play_dialogue(key: String) -> void:
	if not dialogue_map.has(key):
		return
		
	var sequence = dialogue_map[key]
	
	# This loop handles the lines one by one
	for i in range(sequence.size()):
		text = sequence[i]
		if i == 6:
			await get_tree().create_timer(0.7).timeout
			parable.play()
			await get_tree().create_timer(27.0).timeout
		await get_tree().create_timer(3.0).timeout
	
	# Once the loop is empty (null/no more lines), this runs:
	text = ""
	on_dialogue_finished()

func on_dialogue_finished():
	get_tree().change_scene_to_file("res://Scenes/Game/F001_01.tscn")
