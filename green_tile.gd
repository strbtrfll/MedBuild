extends Node2D

signal show_green_tile_info()


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_green_tile_info")
