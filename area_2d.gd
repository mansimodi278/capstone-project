extends Area2D
@onready var family: Sprite2D = $RedPandaSpriteSheet


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	family.visible = true 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	family.visible = false # Replace with function body.
	print("Body picked")
