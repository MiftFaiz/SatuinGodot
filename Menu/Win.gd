extends Node2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass 

func _on_Play_pressed():
	get_tree().change_scene("res://Menu/menu.tscn")
	pass 

func _on_Exit_pressed():
	get_tree().quit()
	pass 
