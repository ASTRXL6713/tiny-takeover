extends RigidBody2D


func _on_area_2d_body_entered(body: Node2D):
	if body is CharacterBody2D:
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print("destroy enemy")
			call_deferred("queue_free")
			body.jump()
		else:
			body.call_deferred("queue_free")
			get_tree().call_deferred("reload_current_scene") 
			print("decrease health")
