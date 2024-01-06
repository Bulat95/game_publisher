extends Label

var list = global_script_load_tech.techno_list

var trig :bool = false
var days_is_activate = 0

func _physics_process(delta):
	text = list[global_script_time.allDays / 10].name
	if global_script_time.allDays % 10 == 0 and trig == false:
		global_script_load_tech.trigger_it_was_activate = true
		trig = true
		days_is_activate = global_script_time.allDays
	if days_is_activate < global_script_time.allDays + 3:
		trig = true
