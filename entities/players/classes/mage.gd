extends Player
class_name Mage

#initialize class specific variables
@export var max_mana:int
var mana:int

@onready var debug:RichTextLabel=$debug

#signals to interact with casting implements
signal pass_mana(amount)

func _ready()->void:
	super()
	#give full mana when entering
	mana=max_mana

func _process(delta: float) -> void:
	debug.text = str(mana)
	#pass
