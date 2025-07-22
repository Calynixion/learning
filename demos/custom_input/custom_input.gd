extends Node2D

@onready var rect:ColorRect=$ColorRect

func _process(delta: float) -> void:
	if Input.is_action_pressed("pass_mana"):
		rect.color=Color.GREEN
		print("green")
	else:
		rect.color=Color.RED
		print("red")
