extends State

#default action state
#can transition to casting sigil state

@export var cast_sigil_state:State
@export var cast_spell_state:State

func process_input(event: InputEvent)->State:
	if Input.is_action_just_pressed("cast_sigil") and count_sigils(parent)==0:
		return cast_sigil_state
	else:
		return null

func _physics_process(delta: float) -> void:
	for child in parent.get_children():
		if child is Sigil:
			if child.selected==true:
				parent.pass_mana.connect(Callable(child,"recieve_mana"))
			else:
				if parent.is_connected("pass_mana",Callable(child,"recieve_mana")):
					parent.disconnect("pass_mana",Callable(child,"recieve_mana"))
	if Input.is_action_pressed("pass_mana") and count_selected_sigils(parent)!=0 and parent.mana>0:
		parent.pass_mana.emit(1)
		parent.mana-=1
		print("passing")
	else:
		print("not")

func count_sigils(node)->int:
	var count:int=0
	for child in node.get_children():
		if child is Sigil:
			count+=1
	return count

func count_selected_sigils(node)->int:
	var count:int=0
	for child in node.get_children():
		if child is Sigil:
			if child.selected==true:
				count+=1
	return count
