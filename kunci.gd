extends Area
class_name kunci

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var scene = preload("res://portal.tscn")
var instance = scene.instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	
#	instance.visible = false
	pass # Replace with function body.

func _process(delta):
	get_node("kunci").rotate_y(deg2rad(100*delta))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_kunci_body_entered(body):
	var i = 0
	if body is Player:
#		print("kena")
#		var instance = scene.instance()
		get_node("kunci").visible = false
		get_parent().get_node("kunci2").visible = true
#		queue_free()
	pass # Replace with function body.


