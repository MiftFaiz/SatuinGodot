extends Spatial
class_name portal

var condition = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	visible = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if condition == 0:
#		visible = false
		print('kena')
#	pass
