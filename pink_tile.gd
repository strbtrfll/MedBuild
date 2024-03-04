extends Node2D



func _on_button_pressed():
	get_tree().call_group("TileSheet","show_pink_tile_info")
	get_tree().call_group("TileSheet","create_click_area")

