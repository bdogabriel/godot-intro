class_name ScreenWarpComponent2D extends Node2D

@onready var screen: Vector2 = get_viewport_rect().size
@onready var parent = get_parent()

# extra_space garante que os meteoros maiores nao vao desaparecer e aparecer de maneira abruta quando chegarem ao fim da tela
# basicamente, estamos dando uma margem a mais para ele demorar um pouco a reaparecer mesmo depois de ter saido da tela
# assim o efeito fica mais natural
@onready var extra_space: Vector2 = $"../Sprite2D".texture.get_size() / 2


func _physics_process(_delta: float) -> void:
	# saiu pra esquerda da tela
	if parent.position.x < 0 - extra_space.x:
		parent.position = Vector2(screen.x + extra_space.x, parent.position.y)
	# saiu para a direita da tela
	elif parent.position.x > screen.x + extra_space.x:
		parent.position = Vector2(0 - extra_space.x, parent.position.y)
	# saiu para cima
	if parent.position.y < 0 - extra_space.y:
		parent.position = Vector2(parent.position.x, screen.y + extra_space.y)
	# saiu para baixo
	elif parent.position.y > screen.y + extra_space.y:
		parent.position = Vector2(parent.position.x, 0 - extra_space.y)
