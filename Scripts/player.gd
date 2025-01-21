extends CharacterBody2D

const SPEED = 100

func _physics_process(delta):
	var input = Input.get_vector("left", "right", "up" , "down")

	if input != Vector2.ZERO:
		input = input.normalized()  # Normalize for 8-directional movement
	velocity = input * SPEED
	move_and_slide()
