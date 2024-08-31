shader_type canvas_item;

void my_func() {
	
}

int my_int_func() {
	return 3;
}

int adder(int a, int b) {
	return a + b;
}

void vertex() {
	// Called for every vertex the material is visible on.
	my_func();
	int my_int = my_int_func();
	int sum = adder(3, 2);
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
