extends RichTextLabel


func _process(delta):
	set_text(" Your Score : "+str(LifeCounter.score))
	pass 

