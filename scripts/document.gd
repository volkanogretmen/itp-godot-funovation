extends Sprite2D

# Gravity force applied to the Area2D
var gravity = 100.0

# Velocity of the Area2D
var velocity = Vector2()

func _ready():
	# Initialization code here, if needed
	pass

func _process(delta):
	# Apply gravity to the velocity
	velocity.y += gravity * delta
	
	# Move the Area2D
	position += velocity * delta
