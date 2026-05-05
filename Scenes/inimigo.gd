extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta: float) -> void:
	if %Jogador:
		mover ()

	move_and_slide()

func mover():
	
	var direcao = (%Jogador.global_position - self.global_position).normalized()
	velocity = SPEED * direcao
	
func tomar_dano():
	self.queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Amigos"):
		body.tomar_dano()
