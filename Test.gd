extends Node2D

func _ready():
	$FadedLightning1.apply_lightning(Vector2(0,800), 6, 400, .5, .5, .1)
	$FadedLightning2.apply_lightning(Vector2(0,100), 1, 20)
	$FadedLightning3.apply_lightning(Vector2(0,100), 2, 100)
	$FadedLightning4.apply_lightning(Vector2(0,800), 3, 100, .5, .5, .5)
	$FadedLightning5.apply_lightning(Vector2(0,800), 6, 400, .5, .5, .1)
	
	$ResetLightningTimer.connect("timeout",self,"_reset_lightning")
	$ResetLightningTimer.start()

func _reset_lightning():
	var curr_time = OS.get_ticks_msec() / 1000

	$FadedLightning1.set_start_time(curr_time, 0.1)
	$FadedLightning2.set_start_time(curr_time + .2, 0.1)
	$FadedLightning3.set_start_time(curr_time + .1, 0.1)
	$FadedLightning4.set_start_time(curr_time + .6, 0.1)
	$FadedLightning5.set_start_time(curr_time + .8, 0.05)