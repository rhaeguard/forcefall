extends CharacterBody2D

const SPEED = 150.0
const JUMP_VELOCITY = -400.0

var score = 100

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func get_hit():
	score -= 1
	print(score)
	

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	move_and_slide()
	

