extends CharacterBody3D
class_name LilGuy

func _ready() -> void:
	velocity = Vector3(2, 0, 0)

func _physics_process(delta: float) -> void:
	velocity *= Vector3(2, 0, 0)
	move_and_slide()
