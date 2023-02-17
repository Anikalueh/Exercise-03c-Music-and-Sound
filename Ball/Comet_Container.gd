extends Node2D

func _phsyics_process(_delta):
	for c in get_children():
		if c.modulate.a <= 0 or c.modulate.v <= 0:
			c.queue_free()
		c.scale *= 0.99
		c.modulate.a -= 0.01
		c.modulate.v -= 0.01
		c.modulate.h += 0.02