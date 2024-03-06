extends TextureRect

@onready var info_label = $InfoLabel


var green_tile = preload("res://UI/Sprite-0001.png")
#var pink_tile = preload("res://Sprite-0002.png")
#var red_tile = preload("res://Sprite-0003.png")
#var orange_tile = preload("res://Sprite-0004.png")



func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton and event.pressed: #and event.button_index == 1:
		hide()
		await get_tree().create_timer(0.1).timeout
		make_america_great_again()

func show_forest_tile_info():
	show()
	texture = green_tile
	info_label.text = "напиши, що дає тайл лісу"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_lake_tile_info():
	show()
	texture = green_tile
	info_label.text = "напиши, що дає тайл озера"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_field_tile_info():
	show()
	texture = green_tile
	info_label.text = "напиши, що дає тайл поля"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_rock_tile_info():
	show()
	texture = green_tile
	info_label.text = "напиши, що дає тайл скелі"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

#Вмикає кнопки
func make_america_great_again():
	if visible == false:
		get_tree().call_group("BasicTile","inable_button")
