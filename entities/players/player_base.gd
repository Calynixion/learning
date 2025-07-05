class_name Player
extends CharacterBody2D
#this is the base script for all player-
# -classes, whether knight, mage, gunslinger, etc.

#initial variables
#because delta time, speed is in pixels- 
# -per SECONDS, not per FRAME
@export var speed:float
@export var max_health:int
@export var class_id:String
var health:int

#state machine values
@export var movement_machine:StateMachine
@export var action_machine:StateMachine

func _ready() -> void:
	#give player full health on entry
	health=max_health
	#initialize state machine and pass self to reference
	movement_machine.init(self)
	action_machine.init(self)

#pass on event handling to state machine
func _unhandled_input(event: InputEvent) -> void:
	movement_machine.process_input(event)
	action_machine.process_input(event)

func _physics_process(delta: float) -> void:
	movement_machine.process_physics(delta)
	action_machine.process_physics(delta)

func _process(delta: float) -> void:
	movement_machine.process_frame(delta)
	action_machine.process_frame(delta)
