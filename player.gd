extends CharacterBody2D

var gravity = 2000
var jumpheight = 850

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jumpheight

	velocity.y += gravity * delta
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		
		if collider and collider.is_in_group("obstacles"):
			game_over()

func game_over() -> void:
	get_tree().reload_current_scene()
