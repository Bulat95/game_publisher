extends Node

var techno_list = []

var techno_list_add_queue = []

var techno_info_text :String
var techno_info_number :int
var trigger_it_was_activate :bool = false

func _ready() -> void:
	techno_list.append(Techno.new(0, "Ограны управления устройством", 1980, 1, 1))
	techno_list.append(Techno.new(1, "Чёрно-белая графика", 1981, 10, 1))
	techno_list.append(Techno.new(2, "Улучшение четкости графики", 1982, 4, 1)) 
	techno_list.append(Techno.new(3, "Полифонические мелодии", 1983, 7, 1)) 
	techno_list.append(Techno.new(4, "8-битные видеоигры", 1985, 4, 1)) 
	techno_list.append(Techno.new(5, "Введение векторной графики", 1987, 1, 1)) 
	techno_list.append(Techno.new(6, "3D текстуры", 1988, 10, 1)) 
	techno_list.append(Techno.new(7, "Цветная графика", 1990, 7, 1)) 
	techno_list.append(Techno.new(8, "Создание мультиплеера", 1992, 4, 1)) 
	techno_list.append(Techno.new(9, "Внедрение искусственного интеллекта в игры", 1994, 1, 1)) 
	techno_list.append(Techno.new(10, "Переход на 16-битные игры", 1995, 10, 1)) 
	techno_list.append(Techno.new(11, "Создание открытого мира", 1997, 7, 1)) 
	techno_list.append(Techno.new(12, "Интернет в играх", 1999, 4, 1)) 
	techno_list.append(Techno.new(13, "3D-графика в реальное время", 2001, 1, 1)) 
	techno_list.append(Techno.new(14, "Массовые многопользовательские онлайн-игры", 2002, 10, 1)) 
	techno_list.append(Techno.new(15, "Игры для мобильных телефонов", 2004, 7, 1)) 
	techno_list.append(Techno.new(16, "Процедурная генерация контента", 2006, 4, 1)) 
	techno_list.append(Techno.new(17, "Физический движок", 2008, 1, 1)) 
	techno_list.append(Techno.new(18, "Игры с сенсорным управлением", 2009, 10, 1))
	techno_list.append(Techno.new(19, "Стриминг игр", 2011, 7, 1)) 
	techno_list.append(Techno.new(20, "Виртуальная реальность", 2013, 4, 1)) 
	techno_list.append(Techno.new(21, "Расширенная реальность", 2015, 1, 1)) 
	techno_list.append(Techno.new(22, "Разбиваемые объекты и окружение", 2016, 10, 1)) 
	techno_list.append(Techno.new(23, "Игры с искусственным интеллектом на подобии GPT-4", 2020, 3, 1))
	techno_list.append(Techno.new(24, "Реальность виртуальной реальности", 2021, 7, 1))
	techno_list.append(Techno.new(25, "Мобильные игры с виртуальной реальностью", 2022, 3, 1))
	techno_list.append(Techno.new(26, "Нейроконтроль в играх", 2023, 11, 1))
	techno_list.append(Techno.new(27, "Машинное обучение в играх", 2024, 7, 1))
	techno_list.append(Techno.new(28, "Бессмертие игрового персонажа через AI", 2025, 3, 1))
	techno_list.append(Techno.new(29, "Разумные NPCs, которые приспосабливаются к действиям игрока", 2026, 11, 1))
	techno_list.append(Techno.new(30, "Видеоигры, основанные на количественном обучении", 2027, 7, 1))
	techno_list.append(Techno.new(31, "Естественная речь NPC", 2028, 3, 1))
	techno_list.append(Techno.new(32, "Персонализация игрового опыта через AI", 2029, 11, 1))
	techno_list.append(Techno.new(33, "Видеоигры без интерфейса", 2030, 7, 1))
	techno_list.append(Techno.new(34, "Автоматическое создание историй в играх", 2031, 3, 1))
	techno_list.append(Techno.new(35, "Киберфизические системы в играх", 2032, 11, 1))
	techno_list.append(Techno.new(36, "Виртуальные персональные ассистенты в играх", 2033, 7, 1))
	techno_list.append(Techno.new(37, "Многоязычный перевод в реальном времени в играх", 2034, 3, 1))
	techno_list.append(Techno.new(38, "Приспосабливаемое ИИ в играх", 2035, 11, 1))
	techno_list.append(Techno.new(39, "Разработка игры через ИИ", 2036, 7, 1))
	techno_list.append(Techno.new(40, "Нейросетевые игры", 2038, 1, 1))
	techno_list.append(Techno.new(41, "Смешанная реальность в массовых играх", 2039, 7, 1))
	techno_list.append(Techno.new(42, "Голографические игры", 2041, 1, 1))
	techno_list.append(Techno.new(43, "Суперинтеллект в играх", 2042, 7, 1))
	techno_list.append(Techno.new(44, "Бесшовность игровых миров", 2044, 1, 1))
	techno_list.append(Techno.new(45, "Адаптивный сюжет", 2045, 7, 1))
	techno_list.append(Techno.new(46, "Глубокое обучение в играх", 2047, 1, 1))
	techno_list.append(Techno.new(47, "Игры, дополняющие реальность", 2048, 7, 1))
	techno_list.append(Techno.new(48, "Управление играми силой мысли", 2050, 1, 1))
	techno_list.append(Techno.new(49, "Молекулярная графика в играх", 2051, 7, 1))
	techno_list.append(Techno.new(50, "Нательный интерфейс для дополненной реальности", 2053, 1, 1)) 

class Techno:
	var number: int
	var name: String
	var year: int
	var month: int
	var day: int

	func _init(number, name, year, month, day):
		self.number = number
		self.name = name
		self.year = year
		self.month = month
		self.day = day
