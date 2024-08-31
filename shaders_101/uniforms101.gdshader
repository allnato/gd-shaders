shader_type canvas_item;

// Uniforms -> Passing information outside to the shader
// They can be set from the inspector or GDScript

// This uniform float is accessible anywhere
// But not assignable

// The uniform float, however, is accessible through the inspector under the "Shader Parameters"
group_uniforms VertexGroup;
uniform float SPEED: hint_range(1.0, 10.0) = 1;
uniform float SWAY = 10;
group_uniforms;

uniform vec4 SPRITE_COLOR1: source_color;


void sway_top_side2side(inout vec2 vector){
	if (vector.y == -64.0) {
		vector += vec2(sin(TIME * SPEED) * SWAY, 0);
	}
}

void circle(inout vec2 vector, bool clockwise) {
	if (clockwise) {
		vector += vec2(cos(TIME * SPEED) * SWAY, sin(TIME * SPEED) * SWAY);
	} else {
		vector += vec2(sin(TIME * SPEED) * SWAY, cos(TIME * SPEED) * SWAY);
	}
}

void circle_top(inout vec2 vector) {
	if (vector.y == -64.0) {
		vector += vec2(cos(TIME * SPEED) * SWAY, sin(TIME * SPEED) * SWAY);
	}
}

void vertex() {
	// Called for every vertex the material is visible on.
	//sway_top_side2side(VERTEX);
	//circle(VERTEX, true);
	circle_top(VERTEX);
}

void fragment() {
	// Called for every pixel the material is visible on.
	
	COLOR = texture(TEXTURE, UV) * SPRITE_COLOR1;

}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
