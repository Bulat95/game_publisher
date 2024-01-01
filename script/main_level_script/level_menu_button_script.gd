extends Button

func _pressed():
	global_script_time.pause = true
	get_tree().change_scene_to_file("res://scene/main_menu_scene.tscn")
