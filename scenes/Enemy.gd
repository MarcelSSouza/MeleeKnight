extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var animation := $AnimatedSprite2D as AnimatedSprite2D
func _ready():
			animation.play("default")


func _physics_process(delta):
	pass
