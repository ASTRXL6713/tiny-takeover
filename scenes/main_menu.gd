extends Node

@onready var readmepage: TextureRect = $readmepage

func _on_level_1_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level1.tscn")


func _on_level_2_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level2.tscn")


func _on_readme_pressed() -> void:
		readmepage.show()


func _on_readmemainmenu_pressed() -> void:
	readmepage.hide()
	get_tree().change_scene_to_file("res://scenes/main-menu.tscn")
