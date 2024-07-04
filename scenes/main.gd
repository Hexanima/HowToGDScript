extends Node

var health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Mantené apretado el espacio :P"
	$Label.modulate = Color.GREEN

func _input(event):
	if event.is_action_pressed("mi_accion"):
		health -= 20
		print(health)
		$Label.text = "NO TAN FUERTE, SOLTA PORFA"
		$Label.modulate = Color.RED
		
	if event.is_action_released("mi_accion"):
		$Label.text = "Gracias che :)"
		$Label.modulate = Color.GREEN
