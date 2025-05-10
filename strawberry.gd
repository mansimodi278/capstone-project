extends Node2D

@onready var anim = $AnimatedSprite2D
@onready var audio_player = $AudioStreamPlayer  # Use this for plain AudioStreamPlayer
@export var value: int = 1

func _ready():
	anim.play("moving")
	connect("body_entered", _on_body_entered)

func _on_body_entered(body):
	if body.name == "red panda" or body.name == "RedPanda":
		audio_player.play()  # Play the munch sound

		Global.score += value
		Global.update_score.emit()
		print(Global.score)

		# Hide the strawberry right away so it's "picked up"
		visible = false
		$CollisionShape2D.disabled = true  # If using a collision shape, disable it

		# Wait for the sound to finish, then delete the node
		await audio_player.finished
		queue_free()

func _on_animated_sprite_2d_animation_finished():
	pass  # Only needed if your animation is using this signal
