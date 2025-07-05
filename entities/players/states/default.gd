extends State

func process_physics(delta: float) -> State:
	#basic 2d movement, multiply direction vector by speed
	var direction:Vector2 = Input.get_vector("left","right","up","down")
	direction=direction.normalized()
	parent.velocity=direction*parent.speed*delta
	parent.move_and_slide()
	
	#no transitions yet
	return null
