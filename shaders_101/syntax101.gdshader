// Defines the Shader mode
// All shaders in Godot should define the shader_type
shader_type canvas_item;

// Each statement is ended with a semi-colon
// Variables define outside of function should be constant
const int my_const_int = 10;

// Notice the function definition of GShader
// void is the return type of the function
void vertex() {
	// This is your Vertex Shader
	// Called for every vertex the material is visible on.
	
	// Data Types in GDShader
	// Variables are statically typed
	int my_int = 100;
	float my_float = 3.14;
	bool my_bool = true;
	const bool my_const_bool = false;
	// Look a Vector 
	vec2 my_vector2 = vec2(1,2);
	vec4 my_vector4 = vec4(1,2,3,4);
	// Accesing Vectors
	my_vector2.x;
	my_vector2.x;
	
	// The .x == .r, .y == .b, ...
	// Colors are represented in rgba
	my_vector4.x; my_vector4.r; my_vector4.s;
	my_vector4.y; my_vector4.g; my_vector4.t;
	my_vector4.z; my_vector4.b; my_vector4.p;
	my_vector4.w; my_vector4.a; my_vector4.q;
	
	my_vector4[0];
	my_vector4[1];
	my_vector4[2];
	my_vector4[3];
	
	// More Vector creation
	vec2 some_vec2 = vec2(3.0, 4.0);
	vec4 some_vec4 = vec4(1.0, 2.0, some_vec2);
	some_vec4 = vec4(some_vec2, vec2(32.0, 41.0));
	
	// Creates Vector3 whose values are all 1.0
	vec3 some_vec3 = vec3(1.0);
	
	// Integer Vectors. Only holds integers
	ivec2 my_ivec2 = ivec2(2,3);
	// Boolean Vectors
	bvec2 my_bvec2 = bvec2(true, false);
	
	
	// Swizzling
	// Extracting values from a vector
	
	// The following two lines of code have the same operation
	vec3 my_vector3 = vec3(my_vector4.x, my_vector4.y, my_vector4.z);
	my_vector3 = my_vector4.xyz;
	
	// Accessing through Swizzling
	some_vec2.xy;
	some_vec3.yz;
	some_vec3.xz;
	
	// Assigning through Swizzling
	// You can be specific with your assignment
	some_vec2.xy = my_vector3.xz;
	some_vec3.zx = my_vector4.ga; // You can mixup the order
	some_vec3 = my_vector2.yyy; // You can repeat an element
	
	// Flow Controls: Ifs, loops statements
	if (my_bool) {
		some_vec3.xy = some_vec2.yx;
	} else if (my_int == 3) {
		some_vec3.xyz = vec3(3);
	} else {
		some_vec2 = vec2(2);
	}
	
	int i = 0;
	while (i < 10) {
		i++;
		my_vector4 += my_vector4;
	}
	
	for(int j=0; j<=5; j++) {
		my_vector4 += my_vector4;
	}
	
	switch(my_int){
		case 1:
			// Put some operations here
			break;
		case 2:
			break;
		case 3:
			break;
		default:
			break;
	}
	
	do {
		my_bool = false;
	} while(my_bool);
}

void fragment() {
	// This is your Fragment Shader
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
