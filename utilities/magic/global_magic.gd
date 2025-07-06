extends Node

#basic magic methods usable by all magic implements

#initialize references
const sigil = preload("res://entities/magic/sigil/sigil.tscn")

#functions

#sigil maker function
func cast_sigil(parent:Node)->void:
	var new_sigil = sigil.instantiate()
	new_sigil.parent = parent
	parent.add_child(new_sigil)

#spell caster
func cast_spell(spell:String,parent:Node,direction:Vector2,speed:float)->void:
	var spell_func:Callable = GlobalSpells.get_spell(spell)
	spell_func.call(parent,direction,speed)
