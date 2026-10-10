extends CharacterBody3D
class_name Player

@export var speed : float = 10.0
@export var acceleration : float = 5.0
@export var gravity : float = 50.0
@export var mouse_sensitivity : float = 0.002
@export var jump_speed : float = 15.0

@onready var camera: Camera3D = $Camera3D

var direction : Vector3 = Vector3.ZERO


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta: float) -> void:
	if direction != Vector3.ZERO:
		direction = direction.normalized()
	
	movement(delta)


func _input(event):
	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * mouse_sensitivity
		camera.rotation.x -= event.relative.y * mouse_sensitivity
		camera.rotation.x = clamp(camera.rotation.x, -PI/2, PI/2)

func movement(delta: float):
	var direction := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var move_dir := (transform.basis * Vector3(direction.x, 0, direction.y)).normalized()
	var target_velocity := move_dir * speed
	
	if is_on_floor() && Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	
	velocity.x = lerp(velocity.x, target_velocity.x, acceleration * delta)
	velocity.z = lerp(velocity.z, target_velocity.z, acceleration * delta)
	
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	move_and_slide()
	velocity = velocity.move_toward(Vector3.ZERO, .1)
	
