extends Node

@export var health = 100 # Accesible en inspector
var script_variable = "Hola"
var damage: int = 50
var armor := 50 # Define el tipo en definicion
const GRAVITY = -9.81

# Called when the node enters the scene tree for the first time.
func _ready():
	var roll = randf() # Float entre 0 y 1
	var items: Array[String] = ["Potion", "Sword", "Axe"]
	print(items)
	print(items[2])
	items[1] = "Staff"
	items.remove_at(2)
	print(items)
	items.append("All-seeing Eye")
	print(items)
	
	for item in items:
		if item.length() > 5:
			print(item)
			
	for n in 8:
		print(n)
	
	var glass := 0.0
	while glass <= 0.5:
		glass += randf_range(0.01, 0.2)
		
		if glass > 0.2:
			break
		
		print(glass)
	
	if roll <= 0.8:
		print("Item COMUN")
	else:
		print("Item RARO")
	
	# Ctrl + Click al nombre de la funcion
	var char_height = randi_range(100, 200)
	
	print("Tu altura es de " + str(char_height) + "cm")
	
	var scope_variable = "Adios"
	var numero = 42
	var texto = "El significado de la vida: " + str(numero)
	print(texto)
	var pi = 3.14
	print(int(pi))
	var position = Vector3(0, 0, 0)
	position.x += 2
	position.y -= 12
	position.z = 5
	print(position)
	print(position.length())
	$Label.text = "Mantené apretado el espacio :P"
	$Label.modulate = Color.GREEN

func _input(event):
	#Chequea presion de input
	if event.is_action_pressed("mi_accion"):
		jump()
		health -= 20 # Resta vida
		#print(health)
		if health <= 0: 
			health = 0
			print("Murió")
		elif health <= 50:
			print("Duele che")
		else:
			print("TAMOS BIEN")
		
		$Label.text = "NO TAN FUERTE, SOLTA PORFA"
		$Label.modulate = Color.RED
		
	if event.is_action_released("mi_accion"):
		$Label.text = "Gracias che :)"
		$Label.modulate = Color.GREEN

func jump():
	print("SALTANDO")

func add(num1: int, num2: int) -> int:
	var result = num1 + num2
	return result
