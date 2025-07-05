extends CharacterBody2D
#initialize variables
@export var speed:float=100

func _physics_process(delta: float) -> void:
	#movement
	var direction=Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	direction=direction.normalized()
	velocity=speed*direction
	move_and_slide()
