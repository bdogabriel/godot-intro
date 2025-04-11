extends Asteroid


func _ready() -> void:
	super()
	smaller_asteroid_scene = preload("res://scenes/asteroid_small.tscn")
