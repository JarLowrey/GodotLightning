extends "res://Lightning.gd"

func _ready():
	self.material = ShaderMaterial.new()
	self.material.shader = preload("./Fade.shader")

func set_start_time(time, child_time_inc):
	self.material.set_shader_param("start_time",time)
	for child in get_children():
		child.set_start_time(time + child_time_inc, child_time_inc)