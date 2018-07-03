extends Node2D

func _ready():
	$Lightning1.apply_lightning(Vector2(0,100), 1, 20)
	$Lightning2.apply_lightning(Vector2(0,100), 2, 100)
	$Lightning3.apply_lightning(Vector2(0,800), 3, 100, .5, .5, .5)
	$Lightning4.apply_lightning(Vector2(0,800), 6, 400, .5, .5, .1)

