extends Node2D


func _on_button_pressed():
	get_tree().call_group("TileSheet","show_lake_tile_info")

func disable_button():
	$LakeButton.disabled = true

func inable_button():
	$LakeButton.disabled = false
