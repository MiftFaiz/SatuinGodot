extends Area

var test = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("portal").visible = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_portal_body_entered(body):
	if body is Player:
		get_tree().change_scene("res://Menu/Win.tscn")
	pass # Replace with function body.
