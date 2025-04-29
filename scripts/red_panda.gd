extends CharacterBody2D

@export var speed = 300
@export var gravity = 100
@export var jump_force = 850
@export var max_jumps = 3

@onready var animation_player = $AnimationPlayer

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
			
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_force
		print ("jump")
		
	var horizontal_direction = Input.get_axis("move_left ", "move_right")
	velocity.x = speed * horizontal_direction
		
	var animation = "tail"
	if velocity.y < 0:
		animation = "jump"
	elif velocity.y > 1 and !is_on_floor():
		animation = "fall"
	elif abs(velocity.x) > 0 and is_on_floor():
		animation = "run"
			
	else:
		animation = "tail"
	animation_player.play(animation)
		

	
	move_and_slide()
	
	print(velocity)
