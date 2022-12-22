extends RichTextLabel

var second = 59
var minutes = 4

func _process(delta):
	if second < 0:
		minutes -= 1
		second = 59
	
	if minutes < 0:
		get_tree().change_scene("res://Menu/DiedMenu.tscn")
		
	set_text(str(minutes)+" : "+str(second))
	pass 

func _on_Timer_timeout():
	second -= 1
	pass 
