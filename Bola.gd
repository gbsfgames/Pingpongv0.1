extends RigidBody2D

var movimiento = Vector2(-100,0)
var impulso = 1.01

func _ready():
	# con esta linea obtengo la posicion para mandar mi bola
	# por primera vez, posteriormente la hago con la funcion
	# inicio_juego()
	position = get_tree().get_nodes_in_group("inicio")[0].position
	
func _process(delta):
	self.set_linear_velocity(-movimiento) 

# Si la bola rebota en la parte de arriba de pj1
func rebote_arriba_pj1():
	movimiento.x = movimiento.x * -impulso
	movimiento.y = movimiento.y + 100 * impulso # cambiar estos valores por una multiplicacion no de nuevo por asignacion de vestores
# Si la bola rebota en la parte de abajo de pj1
func rebote_abajo_pj1():
	movimiento.x = movimiento.x * -impulso
	movimiento.y = movimiento.y + 100 * -impulso

# Si la bola rebota en la parte de arriba de pj2
func rebote_arriba_pj2():
	# lo actualize para intentar un movimiento mas automatico y natural de la bola.
	movimiento.x = movimiento.x * -impulso
	movimiento.y = movimiento.y + 100 * impulso
	#movimiento *= 2
# Si la bola rebota en la parte de abajo de pj2
func rebote_abajo_pj2():
	movimiento = movimiento * -impulso #Vector2(100,-100)
	movimiento.y = movimiento.y + 100 * -impulso

#rebotes de la bola en muro superior
func rebote_arriba():
	if movimiento.x >= 0: 
		movimiento = movimiento.tangent()
		
	if movimiento.x <= 0:
		movimiento = -movimiento.tangent()
#rebotes de la bola en muro inferior
func rebote_abajo():
	if movimiento.x >= 0: 
		movimiento = -movimiento.tangent()
	if movimiento.x <= 0:
		movimiento = movimiento.tangent()
	
#rebote en el centro pj1
func rebote_centropj1():
	movimiento.x = movimiento.x * -impulso
	pass

func rebote_centropj2():
	movimiento.x = movimiento.x * -impulso
	pass
