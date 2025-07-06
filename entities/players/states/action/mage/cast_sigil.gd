extends State

#state when casting sigil
#time based

@export var default_state:State

@export var cast_timer:Timer
var cast_complete:bool = false

func enter():
	cast_timer.start(2)
	cast_complete = false

func process_physics(delta:float)->State:
	if cast_complete==true:
		return default_state
	else:
		return null

func _on_sigil_cast_time_timeout() -> void:
	GlobalMagic.cast_sigil(parent)
	cast_complete = true
