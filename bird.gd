extends TileMapLayer

var speed = 300
var resetX = -1100
var respawnX = 500
var obstacleGap = 400
var totalPairs = 2

func _process(delta: float) -> void:
	position.x -= speed * delta
	
	if position.x <= resetX:
		position.x += obstacleGap * totalPairs
