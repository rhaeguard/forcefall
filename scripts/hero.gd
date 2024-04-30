extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

const FIREBALL = preload("res://scenes/fireball.tscn")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("ui_right"):
		var fireball = FIREBALL.instantiate()
		get_parent().add_child(fireball)
		fireball.position = $Marker2D.global_position
	
	move_and_slide()
