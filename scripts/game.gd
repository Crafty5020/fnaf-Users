extends Node

@export var title : PackedScene

func _process(_delta):
	if Input.is_action_pressed("escape"):
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_packed(title)
