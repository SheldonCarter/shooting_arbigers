extends Node3D
class_name Bird

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("bird move")
	await get_tree().create_timer(2).timeout
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += .02;
	rotation_degrees.y += 1;
	#rotate_y(.02)
	
	
