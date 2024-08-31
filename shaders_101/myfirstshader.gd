extends Node2D
var sine: float = 0.0
var csin: float = 0.0

func _process(delta: float) -> void:
	var TIME: float = Time.get_ticks_msec() /1000.0
	print("TIME: %.2f" % TIME)
	sine = (sin(TIME) + 1.0) * 0.5
	csin = (cos(TIME) + 1.0) * 0.5
	print("sine: %.2f" % sine)
	print("csin: %.2f" % csin)
	pass
