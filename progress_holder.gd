extends Node

var points = 0
@onready var pointslabel: Label = $"../menu/Panel/pointslabel"

func addpoint ():
	points += 1
	print(points)
	pointslabel.text = "points: " + str(points)
