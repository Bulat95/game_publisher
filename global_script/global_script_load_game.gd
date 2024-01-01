extends Node

func _ready():
	load_products_from_json()
	load_time_from_json()

func load_products_from_json() -> void:
	var game_json
	var file = FileAccess.open("res://save/game.json", FileAccess.READ)
	if file != null:
		game_json = JSON.parse_string(file.get_as_text())
		file.close()
	if game_json != null:
		global_script_project.name_project = game_json["name"]
		global_script_project.type_project = game_json["type"]
		global_script_project.action_project = game_json["action"]
		global_script_project.data_create_years = game_json["create_years"]
		global_script_project.data_create_month = game_json["create_month"]
		global_script_project.data_create_days = game_json["create_days"]
		global_script_project.data_create_hours = game_json["create_hours"]
	else:
		print("Error parsing JSON")

func load_time_from_json() -> void:
	var time_json
	var file = FileAccess.open("res://save/time.json", FileAccess.READ)
	if file != null:
		time_json = JSON.parse_string(file.get_as_text())
		file.close()
	if time_json != null:
		global_script_time.years = time_json["years"]
		global_script_time.months = time_json["months"]
		global_script_time.days = time_json["days"]
		global_script_time.hours = time_json["hours"]
	else:
		print("Error parsing JSON")

func save_products_to_json() -> void:
	var file = FileAccess.open("res://save/game.json", FileAccess.WRITE)
	var json_str = JSON.stringify(project_to_dict())
	file.store_string(json_str)
	file.close()

func save_time_to_json() -> void:
	var file = FileAccess.open("res://save/time.json", FileAccess.WRITE)
	var json_str = JSON.stringify(time_to_dict())
	file.store_string(json_str)
	file.close()

func project_to_dict() -> Dictionary:
	var dict = {}
	dict["type"] = global_script_project.type_project
	dict["action"] = global_script_project.action_project
	dict["name"] = global_script_project.name_project
	dict["create_years"] = global_script_project.data_create_years
	dict["create_month"] = global_script_project.data_create_month
	dict["create_days"] = global_script_project.data_create_days
	dict["create_hours"] = global_script_project.data_create_hours
	return dict

func time_to_dict() -> Dictionary:
	var dict = {}
	dict["years"] = global_script_time.years
	dict["months"] = global_script_time.months
	dict["days"] = global_script_time.days
	dict["hours"] = global_script_time.hours
	return dict


