extends Node2D

# Path to the document scene
var document_scene = preload("res://scenes/document.tscn") as PackedScene
# Time between spawns
@export var spawn_interval: float = 1.0
# Area within which to spawn documents
@export var spawn_area: Vector2 = Vector2(800, 100)

var _timer: float = 0.0

func _ready():
	_timer = spawn_interval

func _process(delta: float):
	_timer -= delta
	if _timer <= 0:
		spawn_document()
		_timer = spawn_interval

func spawn_document():
	if document_scene:
		var document_instance = document_scene.instantiate()
		var random_x = randf_range(-spawn_area.x / 2, spawn_area.x / 2)
		var spawn_position = Vector2(random_x, -spawn_area.y)
		document_instance.position = spawn_position
		add_child(document_instance)
