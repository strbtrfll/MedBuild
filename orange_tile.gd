extends Node2D


func _on_orange_button_pressed():
	get_tree().call_group("TileSheet","show_oragne_tile_info")

func disable_button():
	$OrangeButton.disabled = true

func inable_button():
	$OrangeButton.disabled = false
