extends RigidBody2D

@onready var progress_holder: Node = %"progress holder"

func _on_area_2d_body_entered(body: Node2D):
	if body is CharacterBody2D:
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x 
		if (y_delta > 30):
			print("destroy enemy")
			call_deferred("queue_free")
			body.jump()
		else:
			progress_holder.decrease_health() 
			print("damaged player")
			if (x_delta > 0):
				body.jump_side(500)
			else:
				body.jump_side(-500)
