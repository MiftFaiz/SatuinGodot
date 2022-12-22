extends Control
onready var flashAnimation: AnimationPlayer = $FlashAnimation
var velocity: Vector2 = Vector2() 

func _ready():
#	LifeCounter.lives=3
	pass
func _physics_process(delta):
	if LifeCounter.lives == 2:
		$Nyawa3.hide()
	if LifeCounter.lives == 1:
		$Nyawa2.hide()
	if LifeCounter.lives == 0:
		get_tree().change_scene("res://Menu/DiedMenu.tscn")

func knockback(dir: int, force: int) ->void:
	velocity += Vector2(dir, -0.9) * force
