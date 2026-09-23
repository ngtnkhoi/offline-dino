extends TileMapLayer

var speed = 300
var resetX = -1000
var respawnX = 500

func _process(delta: float) -> void:
	position.x -= speed * delta
	
	if position.x <= resetX:
		position.x = respawnX + randf_range(0, 300)
