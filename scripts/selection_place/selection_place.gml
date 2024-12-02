function selection_place(argument0) {
	// selection_place(undo)
	// Releases the selection.
	ds_list_clear(selected_layers)
	if (selected = 0) return 0
	selection_remove(0, 0, 0, 0, 1, argument0)


}
