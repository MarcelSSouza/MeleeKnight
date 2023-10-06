extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var animation := $AnimatedSprite2D as AnimatedSprite2D

func _physics_process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		animation.flip_h = false

	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1
		animation.flip_h = true

	if Input.is_action_pressed("ui_down"):
		direction.y += 1

	elif Input.is_action_pressed("ui_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		animation.play("run")
	else:
		animation.play("idle")

	direction = direction.normalized()
	velocity = direction * SPEED

	move_and_slide()
