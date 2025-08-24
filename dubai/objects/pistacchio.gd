extends Area3D

@export var speed: float = 2

func _physics_process(delta: float) -> void:
	translate(Vector3.BACK * speed * delta)
