extends TextureRect

@onready var info_label = $InfoLabel


var green_tile = preload("res://Sprite-0001.png")
var pink_tile = preload("res://Sprite-0002.png")
var red_tile = preload("res://Sprite-0003.png")
var orange_tile = preload("res://Sprite-0004.png")



func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton and event.pressed: #and event.button_index == 1:
		hide()
		await get_tree().create_timer(0.1).timeout
		make_america_great_again()

func show_green_tile_info():
	show()
	texture = green_tile
	info_label.text = "I`m a green tile)"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_red_tile_info():
	show()
	texture = red_tile
	info_label.text = "I`m a red tile)"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_pink_tile_info():
	show()
	texture = pink_tile
	info_label.text = "I`m a pink tile)"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

func show_oragne_tile_info():
	show()
	texture = orange_tile
	info_label.text = "I`m a orange tile)"
	if visible == true:
		get_tree().call_group("BasicTile","disable_button")

#Вмикає кнопки
func make_america_great_again():
	if visible == false:
		get_tree().call_group("BasicTile","inable_button")
