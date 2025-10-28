extends Path3D

@export var enemy_scene: PackedScene
@export var difficulty_manager: Node
@onready var enemy_spawn_timer: Timer = $EnemySpawnTimer

func spawn_enemy() -> void:
	# connected to timeout signal from EnemySpawnTimer
	var new_enemy = enemy_scene.instantiate()
	add_child(new_enemy)
	enemy_spawn_timer.wait_time = difficulty_manager.get_spawn_time()
