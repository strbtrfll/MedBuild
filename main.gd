extends Node2D

#Файли
var green_tile = preload("res://Tiles/Forest/Forest_tile.tscn")
var orange_tile = preload("res://Tiles/Rock/Rock_tile.tscn")
var pink_tile = preload("res://Tiles/Field/Field_tile.tscn")
var red_tile = preload("res://Tiles/Lake/Lake_tile.tscn")

#Масиви
var tile_prefabs : Array = []
var positions : Array = []

#Керування
var swipe_length = 50
var start_pos : Vector2
var curent_pos : Vector2
var swiping : bool = false
var swipe_treshhold = 10

func _ready():
	MasPosition()
	tile_prefabs.append(green_tile)
	tile_prefabs.append(orange_tile)
	tile_prefabs.append(pink_tile)
	tile_prefabs.append(red_tile)
	spawn_random_tile()

#Свайп (де мій Вова коли він так потрібен)
func _input(event):
	if Input.is_action_just_pressed("press"):
		if !swiping:
			swiping = true
			start_pos = get_global_mouse_position()
	if Input.is_action_pressed("press"):
		if swiping:
			curent_pos = get_global_mouse_position()
			if start_pos.distance_to(curent_pos) >= swipe_length:
				if abs(start_pos.x - curent_pos.x) <= swipe_treshhold and curent_pos.y <= start_pos.y:
					print("Start pos:", start_pos, "Current pos:", curent_pos)
					
					swiping = false
	else:
		swiping = false

func MasPosition():
	var x = 64
	var y = 192
	while x <= 488:
		while y <= 960:
			positions.append(Vector2(x, y))
			y += 128
		x += 128
		y = 192

func spawn_random_tile():
	for pos in positions:
		var rand_index = randi() % tile_prefabs.size()
		var selected_tile = tile_prefabs[rand_index]
		var new_tile = selected_tile.instantiate()
		new_tile.global_position = pos
		add_child(new_tile)


