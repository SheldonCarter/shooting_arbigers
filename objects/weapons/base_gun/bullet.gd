extends Projectile
class_name Bullet



func _ready() -> void:
	call_deferred("reparent", get_tree().root)

func _physics_process(delta: float) -> void:
	move_and_collide(Vector3(0, 0, -.1))
