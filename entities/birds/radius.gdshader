shader_type spatial;

uniform float alpha;


float circle(vec2 position, float radius, float feather) {
	
	return smoothstep(radius, radius + feather, dot(position, position) * 4.0);
}



void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	float dist = length(UV - vec2(0.5));
	float radius = 0.5;
	float line_width = 0.025;
	//line_width = (scale_factor/1200.0) + 0.0025;
	vec3 color = vec3(0.85, 0.0, 1.0); 
	
	if (dist > radius - line_width && dist < radius){
		
	circle(UV, 0.5, 0.005);
	ALBEDO = color;
	ALPHA = alpha;

		
	} else {
		ALPHA = 0.0;
	}
	
	}
	



//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
