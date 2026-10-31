extends MeshInstance3D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	#self.SHADOW_CASTING_SETTING_OFF
	scale = Vector3(7.290001, 1.0, 7.290001)
	var width =  scale.x * get_aabb().get_center().x
	
	get_active_material(0).set_shader_parameter("diameter", width);
	print("(", width, ", ", get_active_material(0).get_shader_parameter("diameter"), ")")
	print("[", scale.x , "]")
	
	
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
	
	#self.global_scale(Vector3(0.01, 0.01, 0.00));
	
	
