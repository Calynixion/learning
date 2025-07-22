extends State

@export var default_state:State

func enter():
	pass

func process_physics(delta:float)->State:
	return default_state
