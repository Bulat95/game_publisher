extends Button


func _pressed():
	global_script_load_game.save_products_to_json()
	global_script_load_game.save_time_to_json()
	get_tree().quit()
