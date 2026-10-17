extends Node3D
class_name WeaponManager

@onready var weapon: Weapon = $Weapon

func primary_attack():
	weapon.shoot()
