extends MeshInstance3D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	#casted to 1.0 or 0.0 and used as oppacity
	var show_movement_info = true; 
	get_active_material(0).set_shader_parameter("alpha", show_movement_info);
	
	var scale_factor =  50.0;
	scale = Vector3(scale_factor, 1.0, scale_factor)
	
#
	#get_active_material(0).set_shader_parameter("scale_factor", scale_factor);
	#print("(", scale_factor, ", ", get_active_material(0).get_shader_parameter("scale_factor"), ")")
	#print("[", scale.x , "]")
	#pass # Replace with function body.
	
	#var flt = 0.43875873262
	#print("float is ", flt)
	#flt = true as float
	#print("float is ", flt)
	#flt = false as float
	#print("float is ", flt)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
	
	#self.global_scale(Vector3(0.01, 0.01, 0.00));
	
	
