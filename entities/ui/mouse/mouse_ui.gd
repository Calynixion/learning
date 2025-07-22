extends Control

#initial variables
@export var sprite:Sprite2D
var collider:Node
@onready var debug:RichTextLabel=$debug

signal click
signal holdBegin
signal holdEnd

func _process(delta: float) -> void:
	global_position=get_global_mouse_position()
	if collider!=null:
		debug.text=str(collider.name)
	else:
		debug.text="null"


func _on_hitbox_area_entered(area: Area2D) -> void:
	if area is Sigil:
		collider=area
		area.selected=true


func _on_hitbox_area_exited(area: Area2D) -> void:
	if area is Sigil:
		collider=null
		area.selected=false
