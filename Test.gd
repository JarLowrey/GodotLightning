extends Node2D

func _ready():
	$Lightning1.apply_lightning(Vector2(0,800), 6, 400, .5, .5, .1)
	$FadedLightning2.apply_lightning(Vector2(0,100), 1, 20)
	$FadedLightning3.apply_lightning(Vector2(0,100), 2, 100)
	$FadedLightning4.apply_lightning(Vector2(0,800), 3, 100, .5, .5, .5)
	$FadedLightning5.apply_lightning(Vector2(0,800), 6, 400, .5, .5, .1)
	
	$ResetLightningTimer.connect("timeout",self,"_reset_lightning")
	$ResetLightningTimer.start()

func _reset_lightning():
	$FadedLightning2.play_lightning(0.1, .1)
	$FadedLightning3.play_lightning(0.1, .2)
	$FadedLightning4.play_lightning(0.1, .3)
	$FadedLightning5.play_lightning(0.1, .4)