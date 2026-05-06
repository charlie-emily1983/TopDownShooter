extends CanvasLayer


func _process(delta: float) -> void:
	$mortos.text = "Kills: " + str(Global.kills)
