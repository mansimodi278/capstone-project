extends Button

func _ready() -> void:
	pass

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Main_Menu.tscn")
