extends Node2D

signal show_green_tile_info()


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_forest_tile_info")

func disable_button():
	$ForestButton.disabled = true

func inable_button():
	$ForestButton.disabled = false
