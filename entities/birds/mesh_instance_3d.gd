extends Node3D

var cent
var radius
var speed


func decide_direction():
	
	pass
	
	

	
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	cent = get_parent().get_node("Radius")
	radius = (cent.get_aabb().size.x * cent.scale.x) / 2
	speed = Vector3(0.0, 50.0, 0.0)
	
	await get_tree().create_timer(2).timeout
	
	rotate_object_local(Vector3(1,0,0), deg_to_rad(90))
	rotate(Vector3(1,0,0), deg_to_rad(90))
	global_rotate(Vector3(1,0,0), deg_to_rad(90))
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.x += .02;
	var dist = global_position.distance_to(cent.global_position)
	
	rotate_x(20000000 * delta)
	
	
	
	
	if (dist > radius):
		#print(dist, " - ", radius)
		pass
