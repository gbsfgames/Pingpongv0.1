extends Label
var tiempo = 0


func _ready():
	self.text = str (tiempo)

func _on_scoreTimer_timeout():
	tiempo += 1
	self.text = str (tiempo)
	pass # replace with function body
