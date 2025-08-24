extends Marker3D

@export var enemy_scene : PackedScene
@export var timer : Timer
@export var one_timer : bool = true

func _ready() -> void:
	timer.one_shot = one_timer
	start_spawn()
	pass

func spawn_enemy():
	var enemy : Area3D = enemy_scene.instantiate()
	get_tree().root.add_child(enemy)
	enemy.global_position = global_position
	pass

func start_spawn():
	timer.start()
	pass

func _on_timer_timeout() -> void:
	spawn_enemy()
	pass # Replace with function body.
