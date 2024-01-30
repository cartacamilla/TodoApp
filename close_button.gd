extends ColorRect


var current_color = $".".color

func _on_mouse_entered():
	$".".color = Color(1, 0, 0, 1)

func _on_mouse_exited():
	$".".color = current_color

func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == 1:
			$ClosePopup.visible = true
