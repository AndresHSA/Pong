class_name Ball
extends CharacterBody2D

@export var speed := 400

@onready var collision_sound: AudioStreamPlayer = %CollisionSound


func _physics_process(delta: float) -> void:
	var collision := move_and_collide(velocity * delta)
	
	if collision:
		if collision.get_collider() is StaticBody2D:
			velocity = 1.03 * velocity.bounce(collision.get_normal())
		else:
			velocity = velocity.bounce(collision.get_normal())
	collision_sound.play()
		


func stop_moving() -> void:
	velocity = Vector2.ZERO


func start_moving() -> void:
	# Horizontal Speed - Choose -1 or 1 randomly
	velocity.x = [-1, 1].pick_random()
	
	# Vertical Speed - Choose -0.8 or 0.8 randomly
	velocity.y = [-0.8, 0.8].pick_random()
	
	# Apply Speed
	velocity = velocity * speed

