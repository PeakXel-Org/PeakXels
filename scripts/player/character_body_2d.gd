extends CharacterBody2D

const SPEED = 175.0
const DEADZONE = 0.1

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

# Default direction: South
var last_index: int = 2

# Walking animations in clockwise order
var animations = [
	"walking_east",
	"walking_south_east",
	"walking_south",
	"walking_south_west",
	"walking_west",
	"walking_north_west",
	"walking_north",
	"walking_north_east"
]

# Corresponding idle frames
var idle_frames = [0, 4, 6, 5, 7, 2, 3, 1]


func _ready():
	play_idle()


func _physics_process(_delta):

	# Get keyboard or joystick input
	var direction = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
		"ui_down"
	)
	if direction.length() > DEADZONE:

		# Character movement
		velocity = direction.normalized() * SPEED

		# Calculate facing direction
		var angle = direction.angle()

		last_index = posmod(
			int(round(angle / (PI / 4.0))),
			8
		)

		# Play walking animation
		if anim.animation != animations[last_index] \
		or not anim.is_playing():
			anim.play(animations[last_index])

	else:

		# Stop character movement
		velocity = Vector2.ZERO

		# Display last facing direction
		play_idle()

	move_and_slide()

	keep_inside_screen()


func play_idle():

	if anim.animation != "idle":
		anim.animation = "idle"

	anim.pause()
	anim.frame = idle_frames[last_index]


func keep_inside_screen():

	var screen_size = get_viewport_rect().size

	# Character boundary margins
	var margin = Vector2(25, 45)

	position.x = clampf(
		position.x,
		margin.x,
		screen_size.x - margin.x
	)

	position.y = clampf(
		position.y,
		margin.y,
		screen_size.y - margin.y
	)
