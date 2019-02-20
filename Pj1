xtends RigidBody2D
var tamano


func _ready():
	tamano = self.get_viewport_rect().size
	
func _process(delta):
	if Input.is_key_pressed(65):
		move_local_y(-10)
	if Input.is_key_pressed(90):
		move_local_y(10)
	
	position.y = clamp(position.y, 0, tamano.y)

func _on_arriba_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_arriba_pj1()
	pass # replace with function body

func _on_abajo_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_abajo_pj1()
	pass # replace with function body

func _on_Centropj1_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_centropj1()
	pass # replace with function body
