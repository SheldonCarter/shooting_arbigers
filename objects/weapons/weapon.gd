extends Node3D
class_name Weapon


@export var base_stats: WeaponStats
@onready var weapon_model : MeshInstance3D = $MeshInstance3D
@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var projectile_point: Marker3D = $ProjectilePoint



func shoot() -> void:
	var bullet : Projectile = base_stats.projectile.instantiate()
	bullet.global_position = projectile_point.global_position
	add_child(bullet)


#func _ready() -> void:
	#weapon_model.mesh
