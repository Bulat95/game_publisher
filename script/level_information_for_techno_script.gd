extends Panel

var panel: Panel


func _ready():
	panel = self
	panel.visible = false 

func _on_level_information_for_techno_button_pressed():
	global_script_load_tech.trigger_it_was_activate = false

func _process(delta):
	panel.visible = global_script_load_tech.trigger_it_was_activate
	global_script_time.pause = global_script_load_tech.trigger_it_was_activate
	
