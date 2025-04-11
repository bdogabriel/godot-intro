extends CharacterBody2D

@export var speed = 700
@onready var area_2d = $Area2D
@onready var visible_on_screen_notifier_2d = $VisibleOnScreenNotifier2D


func _ready() -> void:
	area_2d.body_entered.connect(_on_area_2d_body_entered)  # sempre que o sinal "body_entered" for emitido, chama a funcao _on_area_2d_body_entered

	# queremos destruir o laser quando ele sai da tela, para nao ter varios laseres no jogo sobrecarregando a memoria
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)  # sempre que o sinal "screen_exited" for emitido, chama queue_free (destroi o laser)

	velocity = Vector2(0, -speed)


func _physics_process(_delta: float) -> void:
	move_and_slide()


# body vai ser o asteroid
func _on_area_2d_body_entered(body: Node2D) -> void:
	body.explode()
	queue_free()
