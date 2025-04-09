extends CharacterBody2D

@export_category("Movimento")
@export var max_speed: float = 500

# quero que a nave acelera rapido com o input do player
# mas que demore para parar quando o player nao apertar nada
@export var acceleration: float = 25 # aceleracao da nave com input do player
@export var space_drag: float = 3 # desaceleracao da nave quando player nao aperta nada

@export var rotation_speed: float = PI # se quiser em angulo, pode usar deg_to_rad(180)

# funcao ready chamada sempre que o node entra na hierarquia (eh instanciado)
func _ready() -> void:
	print(rotation)
	pass

# process chamada a todo frame
func _process(delta: float) -> void:
	pass

# physics process chamada a cada fram fisico (diferente do frame normal)
func _physics_process(delta: float) -> void:
	# get_axis retorna
	# 1 se o primeiro input for pressionado
	# -1 se o segundo input for pressionado
	# 0 se os dois ou nenhum for pressionado
	var rotation_dir = Input.get_axis("rotate_l", "rotate_r")
	# rotate mexe na propriedade "rotation" do transform
	rotate(rotation_speed * rotation_dir * delta)

	# queremos que a nave va na direcao na qual esta apontando
	# entao rotacionamos a direcao de propulsao
	var propulsion_dir = Vector2(0, Input.get_axis("up", "down")).rotated(rotation)
	if propulsion_dir == Vector2.ZERO:
		# se o player nao esta apertando nada, desacelera devagar (dir * max_speed = 0)
		velocity = velocity.move_toward(propulsion_dir * max_speed, space_drag)
	else:
		# se o player estiver apertando alguma direcao, vai naquela direcao acelerando rapido
		velocity = velocity.move_toward(propulsion_dir * max_speed, acceleration)
	
	# move_and_slide faz o node andar seguindo o vetor velocidade
	move_and_slide()
