extends Control

@export var title_screen : PackedScene
@export var fade_out_time : float = 0.2 



func _splash_timer_timeout():
		
	fade_out($Disclaimer)
	await get_tree().create_timer(0.3).timeout
	fade_out($CenterContainer/Disclaimer2)
	await get_tree().create_timer(fade_out_time).timeout
	get_tree().change_scene_to_packed(title_screen)


func fade_out(text : Object):
	var tween = get_tree().create_tween()
	
	tween.tween_property(text, "modulate:a", 0.0, fade_out_time)
	

func _process(_delta):
	
	if Input.is_action_just_pressed("godot"):
		await get_tree().create_timer(1.5).timeout
		GV.FNAG = true
