extends CharacterBody2D

@export var speed = 300
@export var gravity = 30
@export var jump_force = 300

onready var animation_player = $AnimationPlayer

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
			
	if Input.is_action_just_pressed("jump") && is_on_floor():
		velocity.y = -jump_force
		
	var animation = "tail"
	if abs(input_vector.x) > 0:
		animation = "jump"
	if velocity.y < 0 && !is_on_floor():
		animation = "jump"
		
		if velocity.y > 0 && !is_on_floor():
		animation = "fall"
		
		animation_player.play(animation)
		
		
	var horizontal_direction = Input.get_axis("move_left ", "move_right")
	
	velocity.x = speed * horizontal_direction
	
	move_and_slide()
	
	print(velocity)
