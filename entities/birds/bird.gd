extends Node3D

var cent
var radius
var speed = 5
var rotation_speed = 2;
var rotat
var velocity


func decide_direction():
	
	pass
	
	

	
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	cent = get_parent().get_node("Radius")
	radius = (cent.get_aabb().size.x * cent.scale.x) / 2

	
	#await get_tree().create_timer(2).timeout
	#rotate_object_local(Vector3(1,0,0), deg_to_rad(90))
	#rotate(Vector3(1,0,0), deg_to_rad(90))
	#global_rotate(Vector3(1,0,0), deg_to_rad(90))
	#
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.x += .02;
	rotation = -rotation
	
	var dist = global_position.distance_to(cent.global_position)
	
	#global_rotate(Vector3(1.0, 0.0, 0.0),2.2 * delta)
	
	
	
	
	if (dist > radius):
		#print(dist, " - ", radius)
		pass
