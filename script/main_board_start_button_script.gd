extends Button

@onready var type_select_list = get_parent().get_node("type_select")
@onready var genre_select_list = get_parent().get_node("genre_select")

var type_project

func _ready():
	initTypeProducts()
	_on_type_select_item_selected(0)

func _pressed():
	global_script_time.pause = false
	set_value_in_global_script()
	get_tree().change_scene_to_file("res://scene/main_level_scene.tscn")

func set_value_in_global_script():
	global_script_project.name_project = get_parent().get_node("product_name").text
	global_script_project.type_project = type_project

func initTypeProducts():
	type_select_list.add_item("Game")
	type_select_list.add_separator()
	type_select_list.add_item("Engine")
	type_select_list.add_separator()
	type_select_list.add_item("Soft")
	type_select_list.connect("item_selected", Callable(self, "_on_type_select_item_selected"))

func _on_type_select_item_selected(index):
	genre_select_list.clear()
	var selected_text = type_select_list.get_item_text(index)
	if selected_text == "Game":
		genre_select_list.add_item("Action")
		genre_select_list.add_item("RPG")
		genre_select_list.add_item("Strategy")
		genre_select_list.add_item("Racing")
		genre_select_list.add_item("Adventure")
		genre_select_list.add_item("Shooter")
		genre_select_list.add_item("Sports")
		genre_select_list.add_item("Platformer")
	elif selected_text == "Engine":
		genre_select_list.add_item("Product 1")
		genre_select_list.add_item("Product 2")
		# Добавьте другие жанры для "Engine", если они есть
	elif selected_text == "Soft":
		# Добавьте жанры для "Soft"
		pass
	genre_select_list.select(0)  # Выбрать первый элемент в жанрах по умолчанию
	type_project = selected_text

