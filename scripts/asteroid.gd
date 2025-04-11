class_name Asteroid extends CharacterBody2D

@export var max_speed: float = 200

@onready var screen: Vector2 = get_viewport_rect().size

# rotacao e velocidade de rotacao aleatorias para deixar o jogo visualmente mais interessante
@onready var rotation_dir: float = pow(-1, randi() % 2)
@onready var rotation_speed: float = PI * randf_range(0, 1)

# cena do asteroid que vai ser a subdivisao deste
# sobrescrita nos scripts que herdam deste
var smaller_asteroid_scene


func _ready() -> void:
	rotate(rotation_speed * rotation_dir)
	velocity = Vector2(randf_range(-max_speed, max_speed), randf_range(-max_speed, max_speed))


func _physics_process(_delta: float) -> void:
	rotate(rotation_speed * _delta)
	move_and_slide()


func explode() -> void:
	_instantiate_asteroids(2)
	queue_free()


func _instantiate_asteroids(num: int) -> void:
	for i in num:
		var asteroid_instance = smaller_asteroid_scene.instantiate()
		get_parent().call_deferred("add_child", asteroid_instance)
		asteroid_instance.global_position = global_position
		asteroid_instance.rotation = rotation
