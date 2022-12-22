extends Node2D
export var speed = 100

onready var dest = $atas.global_position
onready var moving = false

func _ready():
	moving = true
	
func go_there(delta):
	if moving:
		$body.global_position = $body.global_position.move_toward(dest, delta*speed)
	if $body.global_position == dest:
		moving = false

func _process(delta):
	go_there(delta)
	
func _on_Button_pressed():
	get_tree().change_scene("res://About/About.tscn")
	pass # Replace with function body.
