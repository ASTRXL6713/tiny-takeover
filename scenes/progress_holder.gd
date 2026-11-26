extends Node

var points = 0
var lives = 3
@onready var pointslabel: Label = $"../menu/Panel/pointslabel"
@export var hearts : Array[Node] 

func addpoint ():
	points += 1
	print(points)
	pointslabel.text = "points: " + str(points)
	
	
	
func decrease_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().call_deferred("reload_current_scene")
