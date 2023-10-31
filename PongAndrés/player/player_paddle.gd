extends CharacterBody2D

@export var speed := 400

var direction := 0.0


func _physics_process(_delta: float) -> void:
	velocity.y = direction * speed
	move_and_slide()


func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("ui_up", "ui_down")


