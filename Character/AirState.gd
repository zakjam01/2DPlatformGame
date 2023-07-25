extends State

class_name AirState

@export var landing_state : State  
@export var landing_animation : String = "Landing"

var has_jump_fell = false

func state_process(delta):
	if(character.is_on_floor()):
		next_state = landing_state

func on_exit():
	if(next_state == landing_state):
		has_jump_fell = false


