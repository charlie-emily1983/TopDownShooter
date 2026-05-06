extends CanvasLayer


func _process(delta: float) -> void:
	$meow.text = str(Global.tempo)
