extends Camera2D

@export var max_move_speed : float
@export var min_move_speed : float
@export var move_speed : float

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse_location = get_viewport().get_mouse_position()
	
	$mouse/pointer.position = mouse_location
