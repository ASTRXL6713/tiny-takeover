extends Area2D


func _on_area_2d_body_entered(body: Node2D):
	if body is CharacterBody2D:
		print("touched")
		get_tree().reload_current_scene()


func _on_body_entered(body: Node2D):
	if body is CharacterBody2D:
		get_tree().reload_current_scene()
