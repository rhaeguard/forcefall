extends Area2D

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = delta * 200
	translate(velocity)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_body_entered(body):
	queue_free()
	var enemy = get_node("../Enemy")
	enemy.get_hit()
