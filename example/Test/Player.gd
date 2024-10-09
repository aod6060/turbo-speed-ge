extends KinematicBody2D



export(float) var speed = 64.0

var direction:Vector2 = Vector2(0.0, 0.0)
var velocity:Vector2 = Vector2(0.0, 0.0)

func _ready():
	pass
	
	
func _process(delta):
	direction.x = Input.get_axis("left", "right")
	direction.y = Input.get_axis("up", "down")
	
	direction = direction.normalized()
	
	
func _physics_process(delta):
	velocity = direction * speed
	velocity = move_and_slide(velocity, Vector2.UP)
