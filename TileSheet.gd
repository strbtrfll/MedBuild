extends TextureRect

@onready var info_label = $InfoLabel


var green_tile = preload("res://Sprite-0001.png")
var pink_tile = preload("res://Sprite-0002.png")
var red_tile = preload("res://Sprite-0003.png")



func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton and event.pressed: #and event.button_index == 1:
		hide()

func show_green_tile_info():
	show()
	texture = green_tile
	info_label.text = "I`m a green tile)"

func show_red_tile_info():
	show()
	texture = red_tile
	info_label.text = "I`m a red tile)"

func show_pink_tile_info():
	show()
	texture = pink_tile
	info_label.text = "I`m a pink tile)"
