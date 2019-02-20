extends Node
# añado la opcion de elegir una escena para instanciar
export (PackedScene) var nuevabol
var puntos_j1 = 0
var puntos_j2 = 0

func _ready():
	# llamo a la funcion inicio_juego() ppor primera vez
	get_tree().get_nodes_in_group("main")[0].inicio_juego()
	#Asigno la posicion de la bola por primera vez
	$Bola.position= $bola_inicio.position
	# Se asignan las posiciones de cada jugador
	$Player.position = $Jugador1_inicio.position
	$Player2.position = $Jugador2_inicio.position
	
#cuando la bola sale por la derecha
func _on_derecha_body_entered(body):
	#esta linea elimina a la bola para que una nueva utilize su lugar
	get_tree().get_nodes_in_group("bola")[0].queue_free()
	#anado puntos a los scores
	puntos_j1 += 1
	print ("puntos_j1 = ", puntos_j1)
	get_tree().get_nodes_in_group("main")[0].inicio_juego()
	puntos_pj1()
	

#cuando la bola sale por la izquierda
func _on_izquierda_body_entered(body):
	#esta linea elimina a la bola para que una nueva utilize su lugar
	get_tree().get_nodes_in_group("bola")[0].queue_free()
	#anado puntos a los scores
	puntos_j2 = puntos_j2 + 1
	print ("puntos_j2 = ", puntos_j2)
	get_tree().get_nodes_in_group("main")[0].inicio_juego()
	puntos_pj2()

#funcion que llama a la bola cada vez que sale de pantalla.
func inicio_juego():
	var boln = nuevabol.instance()
	add_child(boln)
	$Bola.position= $bola_inicio.position
	
# Funcion de puntos para pj1
func puntos_pj1():
	var palabra = String(puntos_j1)
	get_tree().get_nodes_in_group("puntos")[0].text = palabra

# funcion de puntos para pj2
func puntos_pj2():
	var palabra2 = String(puntos_j2)
	get_tree().get_nodes_in_group("puntos")[1].text = palabra2

#Cuando la bola rebota en la pared superior 
func _on_superior_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_arriba()
	pass # replace with function body

#Cuando la bola rebota en la pared inferior
func _on_Inferior_body_entered(body):
	get_tree().get_nodes_in_group("bola")[0].rebote_abajo()
	pass # replace with function body
