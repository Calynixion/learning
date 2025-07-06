extends State

#default action state
#can transition to casting sigil state

@export var cast_sigil_state:State
@export var cast_spell_state:State

func process_input(event: InputEvent)->State:
	if Input.is_action_just_pressed("cast_sigil"):
		return cast_sigil_state
	elif Input.is_action_just_pressed("cast_spell") and count_sigils(parent)!=0:
		return cast_spell_state
	else:
		return null
	
func count_sigils(node)->int:
	var count:int = 0
	for child in node.get_children():
		if child is Sigil:
			count+=1
	return count
