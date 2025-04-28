extends CharacterBody2D

const speed = 550
const jump_power = -2000

const acc = 50
const friction = 70

const gravity = 120 

func _physics_process(delta):
	pass 
	
func input() -> Vector2:
	var input_dir = Vector2.ZERO
	
	input_dir.x =  Input.get_axis("ui_left","ui_right")
	input_dir = input_dir.normalized()
	return input_dir
	
func accelerate(direction):
