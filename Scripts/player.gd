extends CharacterBody2D

const SPEED = 100

func _physics_process(delta):
	var input = Input.get_vector("ui_left", "ui_right", "ui_up" , "ui_down")

	if input != Vector2.ZERO:
		input = input.normalized()  # Normalize for 8-directional movement
	velocity = input * SPEED
	move_and_slide()
