extends Node3D

@onready var pivot = $pivot
var increment = 0

func _process(delta: float) -> void:
	pivot.rotation_degrees = Vector3(0,sin(increment)*90,0)
	increment+=PI/1080
