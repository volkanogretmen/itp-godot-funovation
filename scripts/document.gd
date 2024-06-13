extends Area2D

# Velocity of the Area2D
var velocity = Vector2()

func _ready():
	# Initialization code here, if needed
	pass

func _process(delta):
	# Apply gravity to the velocity
	velocity.y += gravity * delta * 0.3
	
	# Move the Area2D
	position += velocity * delta * 0.3


func _on_body_entered(body):
	print("+1 document!")
	queue_free()
