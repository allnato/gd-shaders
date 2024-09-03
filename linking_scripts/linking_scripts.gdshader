shader_type canvas_item;

group_uniforms properties;
uniform float radius = 100.0;
uniform float speed = 3.0;
uniform vec4 color: source_color;
group_uniforms;


void circle(inout vec2 vertex) {
	vertex.x += (cos(TIME * speed) + 1.0) / 2.0 * radius;
	vertex.y += (sin(TIME * speed) + 1.0) / 2.0 * radius;
}

void vertex() {
	VERTEX.x += (cos(TIME * speed)) / 2.0 * radius;
	VERTEX.y += (sin(TIME * speed)) / 2.0 * radius;
}


void fragment() {
	COLOR = texture(TEXTURE, UV) * color;
}
