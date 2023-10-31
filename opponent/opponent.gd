extends CharacterBody2D

@export var speed:int = GameManager.speed
@export var ball: Node2D

func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = get_direction() * speed
	move_and_slide()


func get_direction() -> int:
	var dead_zone := 25
	
	# If the ball is above, return -1 (move the paddle up)
	if ball.position.y - position.y < -dead_zone:
		return -1
	# If the ball is bellow, return 1 (move the paddle down)
	elif ball.position.y - position.y > dead_zone:
		return 1
	# Else return 0 (don't move the paddle)
	return 0

