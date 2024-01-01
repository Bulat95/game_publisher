extends Node

var name_project
var type_project
var action_project

var days_for_task: int

var data_create_years: int
var data_create_month: int
var data_create_days: int
var data_create_hours: int

var global_dictionary_techno = {}

func set_date_create(days: int):
	days_for_task = days
	data_create_years = days / 365
	days %= 365

	data_create_month = days / 30
	days %= 30

	data_create_days = days
	data_create_hours = 0
