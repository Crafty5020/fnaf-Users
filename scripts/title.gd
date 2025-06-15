extends Node2D

@export var game : PackedScene
@export var news_paper : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$FNAG.visible = false
	if GV.FNAG == true:
		$FNAG.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("escape"):
		get_tree().quit()


func start_game():
	if GV.first_play == true:
		get_tree().change_scene_to_packed(game)
	
	# get_tree().change_scene_to_packed(news_paper)
