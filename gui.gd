extends CanvasLayer

func _ready() -> void:
	Global.connect("update_score", update_score)
	$lblScore.text = "0"

func update_score() -> void:
	$lblScore.text = str(Global.score)
