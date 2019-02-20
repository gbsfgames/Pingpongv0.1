extends RigidBody2D
var tamano

func _ready():
	tamano = self.get_viewport_rect().size
	#tamano_pj = get_node("Sprite").texture.get_size()
	
func _process(delta):
	if Input.is_key_pressed(79):
		move_local_y(-10)
	if Input.is_key_pressed(76):
		move_local_y(10)
	
	position.y = clamp(position.y, 0, tamano.y)
	#position.y = clamp(position.y, 0, tamano.y)


func _on_arriba_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_arriba_pj2()
	pass # replace with function body


func _on_abajo_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_abajo_pj2()
	pass # replace with function body

func _on_Centropj2_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_centropj2()
	pass # replace with function body
