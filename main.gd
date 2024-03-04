extends Node2D

var green_tile = preload("res://green_tile.tscn")
var orange_tile = preload("res://orange_tile.tscn")
var pink_tile = preload("res://pink_tile.tscn")
var red_tile = preload("res://red_t_ile.tscn")


var tile_prefabs : Array = []
var positions : Array = []




func _ready():
	MasPosition()
	tile_prefabs.append(green_tile)
	tile_prefabs.append(orange_tile)
	tile_prefabs.append(pink_tile)
	tile_prefabs.append(red_tile)
	spawn_random_tile()

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


