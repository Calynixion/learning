extends Node
class_name State

#base class for all State objects
#used as child of state_machine object

# Hold a reference to the parent so that it can be controlled by the state
var parent: Player

func enter() -> void:
	pass

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
