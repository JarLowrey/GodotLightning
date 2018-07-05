extends "res://Lightning.gd"

func _ready():
	self.material = ShaderMaterial.new()
	self.material.shader = preload("./Fade.shader")

func play_lightning(child_time_inc, delay = 0):
	var start_time = OS.get_ticks_msec() / 1000 + delay
	
	self.material.set_shader_param("start_time",start_time)
	for child in get_children():
		child.play_lightning(child_time_inc, delay + child_time_inc)