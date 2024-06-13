extends Node

var score = 0
@export var score_label_path: NodePath  # Exported NodePath for ScoreLabel
@onready var score_label: Label = null

func _ready():
	score_label = get_node(score_label_path) as Label
	if score_label == null:
		print("Error: score_label is null")
	else:
		print("score_label found:", score_label)

func add_point():
	score += 1
	if score_label:
		score_label.text = "Score: " + str(score) + " "
	else:
		print("Error: score_label is null when adding point")
