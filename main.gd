extends Node2D

var green_tile = preload("res://green_tile.tscn")
var orange_tile = preload("res://orange_tile.tscn")
var pink_tile = preload("res://pink_tile.tscn")
var red_tile = preload("res://red_t_ile.tscn")


var tile_prefabs : Array = []
var positions : Array = [Vector2(64,128),Vector2(192,128),Vector2(320,128),Vector2(448,128),Vector2(64,256),Vector2(192,256),Vector2(320,256),Vector2(448,256),Vector2(64,384),Vector2(192,384),Vector2(320,384),Vector2(448,384),Vector2(64,512),Vector2(192,512),Vector2(320,512),Vector2(448,512),Vector2(64,640),Vector2(192,640),Vector2(320,640),Vector2(448,640),Vector2(64,768),Vector2(192,768),Vector2(320,768),Vector2(448,768),Vector2(64,896),Vector2(192,896),Vector2(320,896),Vector2(448,896)]



func _ready():
	tile_prefabs.append(green_tile)
	tile_prefabs.append(orange_tile)
	tile_prefabs.append(pink_tile)
	tile_prefabs.append(red_tile)
	spawn_random_tile()

func spawn_random_tile():
	for pos in positions:
		var rand_index = randi() % tile_prefabs.size()
		var selected_tile = tile_prefabs[rand_index]
		var new_tile = selected_tile.instantiate()
		new_tile.global_position = pos
		add_child(new_tile)


