extends CharacterBody2D

const SPEED = 30.0
const JUMP_VELOCITY = -400.0

var player: CharacterBody2D = null
var direction = Vector2.ZERO
@onready var animation := $AnimatedSprite2D as AnimatedSprite2D

func _ready():
	animation.play("default")

func _physics_process(delta):
	if player == null:
		return
	else:	
		var direction: Vector2 = global_position.direction_to(player.global_position)
		velocity = direction *SPEED
		move_and_slide()


func _on_area_2d_body_entered(body):
	player = body

func _on_area_2d_body_exited(body):
	player = null
