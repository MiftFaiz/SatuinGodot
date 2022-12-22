extends Node

export(bool) var can_toggle_pause: bool = true

func _ready():
	get_node("CanvasLayer").visible = false

func _process(delta):
	if Input.is_action_just_pressed("menu_pause"):
		if !get_tree().paused:
			pause()
		else:
			resume()
			
func pause():
	if can_toggle_pause:
		get_tree().set_deferred("paused", true)
		get_node("CanvasLayer").visible = true

func resume():
	if can_toggle_pause:
		get_tree().set_deferred("paused", false)
		get_node("CanvasLayer").visible = false

