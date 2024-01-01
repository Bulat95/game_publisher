extends Label


var list_techno = global_script_load_tech.techno_list

var days_last_techno :int
var index :int

func _process(delta):
	days_last_techno = global_script_time.allDays
	index = days_last_techno/5
	var game = list_techno[index]
	text = game.name

