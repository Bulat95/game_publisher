extends TextureRect

var textures = [
	preload("res://texture/1.png"),
	preload("res://texture/2.png"),
	preload("res://texture/3.png"),
	preload("res://texture/4.png"),
]
var current_texture = 0

func _ready():
	texture = textures[current_texture]   # Установка начальной текстуры

func change_background():
	current_texture += 1
	if current_texture >= textures.size():
		current_texture = 0
	texture = textures[current_texture]   # Смена текстуры


func _on_button_pressed():
	change_background()
