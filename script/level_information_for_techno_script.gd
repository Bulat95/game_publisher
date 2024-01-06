extends Panel

var panel: Panel


func _ready():
	panel = self
	panel.visible = false 

func _on_level_information_for_techno_button_pressed():
	panel.visible = false 
	global_script_time.pause = false
	global_script_load_tech.trigger_it_was_activate = false

func _physics_process(delta):
	panel.visible = global_script_load_tech.trigger_it_was_activate
	if panel.visible:
		global_script_time.pause = true
#		if global_script_load_tech.trigger_it_was_activate == false:
#			global_script_load_tech.trigger_it_was_activate = false
	
