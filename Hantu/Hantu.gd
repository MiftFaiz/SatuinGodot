extends KinematicBody

onready var agent : NavigationAgent = $agent
export var speed = 3.0
onready var target : Node = $"../Player"

func update_target_location(target_location):
	agent.set_target_location(target_location)

func _ready():
	pass
	
func _physics_process(delta):
	var current = global_transform.origin
	var next = agent.get_next_location()
	#var new_velocity = (next - current).normalized() * speed * delta
	var velocity = (next - current).normalized() * speed 
	
	move_and_slide(velocity)
	#move_and_collide(velocity)
	#agent.set_velocity(velocity)








func _on_agent_navigation_finished():
	print("Mati")
	pass # Replace with function body.
