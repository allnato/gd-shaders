shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	
	// COLOR is a built-in variable in fragment()
	// COLOR is a vec4 data type. Its four values are rgba
	vec4 light_pink = vec4(255, 5, 115, 0.63);
	vec4 neon_green = vec4(5, 255, 0, 0.63);
	light_pink.rgb /= 255.0;
	neon_green.rgb /= 255.0;
	
	float sine = (sin(TIME * 3.0) + 1.0) * 0.5;
	vec4 mixed = mix(light_pink, neon_green, sine);
	float gray = COLOR.r*0.3 + COLOR.g*0.59 + COLOR.b*0.11;
	vec4 grayscale = vec4(vec3(gray), COLOR.a);
	//COLOR = mixed;
	
	// Returns the color of a texture
	// UV is a vec2 and represents the coords of the texture
	
	COLOR = texture(TEXTURE, UV) * mixed;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
