extends Area2D

var velocidade = 500
var direcao = Vector2.ZERO


func _process(delta: float) -> void:
	position += velocidade * delta * direcao
