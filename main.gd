extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_KillZone_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	
	print("Body entered kill zone")
	game_over(body)

func game_over(body: Node2D) -> void:
	print("GAME OVER TRIGGERED")
	get_tree().call_deferred("reload_current_scene")
