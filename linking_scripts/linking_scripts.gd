extends Node2D
# Linking Shader uniforms to a GDScript
# 1. Reference the Node with the shader you want to modify
@onready var godot_icon: Sprite2D = get_node("Sprite2D")
var icon_base_speed: float = 0.0
var icon_base_radius: float = 0.0

func _ready() -> void:
	icon_base_speed = godot_icon.material.get_shader_parameter("speed")
	icon_base_radius = godot_icon.material.get_shader_parameter("radius")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		var new_speed: float = randf_range(5.0, 15.0)
		var new_color: Color = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
		
		godot_icon.material.set_shader_parameter("speed", new_speed)
		godot_icon.material.set_shader_parameter("color", new_color)
		
