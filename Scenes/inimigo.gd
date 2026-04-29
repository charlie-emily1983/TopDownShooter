extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta: float) -> void:
	mover ()

	move_and_slide()

func mover():
	
	var direcao = (%Jogador.global_position - self.global_position).normalized()
	velocity = SPEED * direcao
