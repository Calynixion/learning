extends Caster
class_name Sigil

#base class for sigils
#sigils are physical, nontangible 
# casting implements that can be 
# manipulated in space

@onready var debug:RichTextLabel=$debug

#projectile sigil type: auto, semi, burst, beam 


@export var parent:Node
#sigil mana
@export var mana:int = 0

var selected:bool=false
@onready var indicator:Sprite2D=$indicator

func _ready():
	indicator.visible=false

func _process(delta: float) -> void:
	if mana>=100:
		mana-=100
		GlobalMagic.cast_spell("firebolt",parent,Vector2(1,0),100)
	debug.text=str(mana)
	if selected==true:
		indicator.visible=true
	else:
		indicator.visible=false
	
func recieve_mana(amount:int):
	mana+=amount
