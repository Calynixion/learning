extends Node

#list of all magic spells called by magic implements
# along with basic magic functions

#calls to magic references
const firebolt_projectile = preload("res://entities/magic/attacks/projectiles/firebolt.tscn")

#spell getter,returns callable from string (name of spell)
func get_spell(spell_id:String)->Callable:
	return Callable(self,spell_id)

#list of all spells as functions

#firebolt(parent,direction,speed)
func firebolt(parent:Node,direction:Vector2,speed:float)->void:
	var new_firebolt = firebolt_projectile.instantiate()
	new_firebolt.parent=parent
	new_firebolt.direction=direction
	new_firebolt.speed=speed
	new_firebolt.top_level=true
	new_firebolt.position=parent.position
	parent.add_child(new_firebolt)
