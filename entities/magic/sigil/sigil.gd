extends Caster
class_name Sigil

#base class for sigils
#sigils are physical, nontangible 
# casting implements that can be 
# manipulated in space

#sigil type:minimum, continuious

var parent:Node
#sigil mana
var mana:int = 0

func _ready():
	if parent!=null:
		parent.pass_mana.connect(recieve_mana)
	pass

func recieve_mana(amount:int):
	mana+=amount
