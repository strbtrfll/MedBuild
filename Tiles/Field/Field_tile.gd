extends Node2D


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_field_tile_info")

func disable_button():
	$FieldButton.disabled = true

func inable_button():
	$FieldButton.disabled = false
