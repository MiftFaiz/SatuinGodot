extends Spatial

onready var player = $NavigationMeshInstance/Player
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _physics_process(delta):
	get_tree().call_group("hantu", "update_target_location", player.global_transform.origin)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
