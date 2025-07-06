extends State

@export var default_state:State

func enter():
	parent.pass_mana.emit(10)

func process_physics(delta:float)->State:
	return default_state
