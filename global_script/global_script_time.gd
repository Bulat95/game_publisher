extends Node

var years: int = 1980
var months: int = 1
var days: int = 1
var hours: int = 1
var allDays: int = 1


var coefficientForTimer: int = 1
var pause: bool = false
var timer

func _ready():
	timer = Timer.new()
	timer.wait_time = coefficientForTimer
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))
	add_child(timer)
	timer.start()

func _physics_process(delta):
	if pause:
		toggle_pause(true)
	if !pause:
		hours += 1
		if hours >= 24:
			hours -= 24
			days += 1
			allDays += 1
			if days >= 30:
				days -= 30
				months += 1
				if months >= 12:
					months -= 12
					years += 1

func toggle_pause(pause_and_save: bool):
	if pause_and_save == true:
		pause = true
		timer.stop()
	else:
		pause = false
		timer.start()
