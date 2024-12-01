function instrument_remove(ins) {
	for (a = 0; a <= enda; a += 1) {
		if (colamount[a] > 0) {
			for (b = colfirst[a]; b <= collast[a]; b += 1) {
			    if (song_exists[a, b] && song_ins[a, b] = ins) {
					remove_block(a, b)
				}
			}
		}
	}
	
	// Remove this instrument from MIDI devices that might be using it
	for (d = 0; d < midi_devices; d += 1) {
		var midi_ins = mididevice_instrument[d]
		if (midi_ins == ins) {
			mididevice_instrument[d] = -1; // fall back to 'Use selected'
		}
	}
	
	with (ins) {
		instrument_free()
		ds_list_delete_value(other.instrument_list, ins)
		instance_destroy()
	}
	
	// Reset text boxes to update the instrument name
	for (var i = ds_list_find_index(instrument_list, ins); i <= ds_list_size(instrument_list); i++) {
		text_exists[70 + i] = -1
	}
	
	user_instruments--
	changed = 1
}