extends CharacterBody2D


const SPEED = 300.0

var jogador = null

func _physics_process(delta: float) -> void:
	if jogador:
		mover ()

	move_and_slide()

func mover():
	
	var direcao = (jogador.global_position - self.global_position).normalized()
	velocity = SPEED * direcao
	
func tomar_dano():
	Global.kills += 1
	
	self.queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Amigos"):
		body.tomar_dano()
