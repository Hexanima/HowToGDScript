extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hola mundo!")
	$Label.text = "Mantené apretado el espacio :P"
	$Label.modulate = Color.GREEN

func _input(event):
	if event.is_action_pressed("mi_accion"):
		$Label.text = "NO TAN FUERTE, SOLTA PORFA"
		$Label.modulate = Color.RED
		
	if event.is_action_released("mi_accion"):
		$Label.text = "Gracias che :)"
		$Label.modulate = Color.GREEN
