extends Area2D

@onready var progress_holder: Node = %"progress holder"


func _on_body_entered(body):
	if(body.name == "CharacterBody2D"):
		call_deferred("queue_free")
		progress_holder.addpoint()
