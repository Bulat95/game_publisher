extends Label

func _process(delta):
	if global_script_project.name_project != null:
		text = global_script_project.name_project
	
