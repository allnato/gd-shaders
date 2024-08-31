shader_type canvas_item;
const float speed = 10.0;

void vertex() {
// The Vertex function is called for every vertex
// Our sprite has 4 vertices. For 2D images, you only need two triangles

//	Offsetting the Image
// Vertices are in local coordinates. Relative to the origin
//if (VERTEX.y == -64.0){
	//VERTEX += vec2(0,-200);
//}

// Built-in Variable: TIME
// Stores the TIME (in seconds) since the engine has started
// The TIME variables counts till 3600.0. After that, it go backs to 0.
//VERTEX += vec2(0.0, TIME);

//VERTEX += vec2(cos(TIME)*200.0 , sin(TIME)*50.0);
if (VERTEX.y == -64.0) {
	VERTEX += vec2(cos(TIME)*100.0 , sin(TIME * speed)*10.0);
}

}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
