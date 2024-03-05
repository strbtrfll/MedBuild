extends Node2D


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_red_tile_info")

func disable_button():
	$RedButton.disabled = true

func inable_button():
	$RedButton.disabled = false
