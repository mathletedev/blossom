extends CharacterBody2D

@export var speed: float = 100

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var input_direction := Vector2.ZERO


func _process(_delta):
	input_direction = Input.get_vector("left", "right", "up", "down")

	velocity = input_direction.normalized() * speed

	if velocity.x > 0:
		sprite.flip_h = false
	elif velocity.x < 0:
		sprite.flip_h = true

	move_and_slide()
