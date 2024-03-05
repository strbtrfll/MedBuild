extends Node2D


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_pink_tile_info")

func disable_button():
	$PinkButton.disabled = true

func inable_button():
	$PinkButton.disabled = false
