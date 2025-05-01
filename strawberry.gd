extends Node2D

@onready var anim = $AnimatedSprite2D
@export var value:int = 1

func _ready():
	anim.play("moving")


func _on_body_entered(body): 
	if body.name == "red panda":
		Global.score += value
		print(Global.score)

		queue_free()
	pass # Replace with function body.


func _on_animated_sprite_2d_animation_finished():
	pass # Replace with function body.
