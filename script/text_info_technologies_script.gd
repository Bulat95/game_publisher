extends Label

var list = global_script_load_tech.techno_list

var trig :bool = false
var hours_is_activate = 0

func _process(delta):
	text = list[global_script_time.allDays / 10].name
	if global_script_time.allHours / 24 % 10 == 0:
		global_script_load_tech.techno_list_add_queue.append(text)
	if global_script_load_tech.techno_list_add_queue.size() > 5:
		print("i am here")
		global_script_load_tech.trigger_it_was_activate = true
		global_script_load_tech.techno_list_add_queue.clear()
