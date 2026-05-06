extends Area2D

var velocidade = 500
var direcao = Vector2.ZERO


func _process(delta: float) -> void:
	position += velocidade * delta * direcao


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Inimigos"):
		body.tomar_dano()
		self.queue_free()
