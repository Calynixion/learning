extends Area2D

#firebolt projectile
var parent:Node
var direction:Vector2
var speed:float

#firebolt speed is in pixels per frame, not seconds like
# the player, the speed value is 1/60 but moves as
# same speed of player

func _physics_process(delta: float) -> void:
	position+=direction*speed*delta
