extends CharacterBody2D

@export var Speed = 200

var idle_frame = "idle_down"

##starting idle function
func _ready() -> void:
	global_position = Vector2(900, 400)
	$AnimatedSprite2D.play("idle_frame")
	
#action function	
func _process(delta: float) -> void:
	move_and_slide()
	player_movement()
	
#define
func player_movement():
	if Input.is_action_pressed("up"):
		velocity.y = -Speed
		velocity.x = 0
		$AnimatedSprite2D.play("walking_up")
		idle_frame = "idle_up"
		
	elif Input.is_action_pressed("down"):
		velocity.y = Speed
		velocity.x = 0
		$AnimatedSprite2D.play("walking_down")
		idle_frame = "idle_down"
		
	elif Input.is_action_pressed("left"):
		velocity.y = 0
		velocity.x = -Speed
		$AnimatedSprite2D.play("walking_left")
		idle_frame = "idle_left"
		
	elif Input.is_action_pressed("right"):
		velocity.y = 0
		velocity.x = Speed
		$AnimatedSprite2D.play("walking_right")
		idle_frame= "idle_right"
		
	else:
		velocity.y = 0
		velocity.x = 0	
		$AnimatedSprite2D.play(idle_frame)
