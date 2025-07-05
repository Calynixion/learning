class_name Player
extends CharacterBody2D
#this is the base script for all player-
# -classes, whether knight, mage, gunslinger, etc.

#initial variables
#because delta time, speed is in pixels- 
# -per SECONDS, not per FRAME
@export var speed:float = 6000
@export var max_health:int = 10
var health:int

#Plugin for class script
@export var player_class:Script

#state machine values
@export var state_machine:StateMachine

func _ready() -> void:
	#give player full health on entry
	health=max_health
	#initialize state machine and pass self to reference
	state_machine.init(self)

#pass on event handling to state machine
func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)
