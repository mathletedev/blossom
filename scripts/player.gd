extends CharacterBody2D

@export var speed: float = 100

var input_direction := Vector2.ZERO


func _process(_delta):
	input_direction = Input.get_vector("left", "right", "up", "down")

	velocity = input_direction.normalized() * speed

	move_and_slide()
