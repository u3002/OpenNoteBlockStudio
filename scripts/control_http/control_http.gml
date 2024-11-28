function control_http() {
	// control_http()
	// Handles the check for updates, then attempts to download it if one is available
	
	if (song_download_data != pointer_null) {
		download_song_from_url()
	}

	else if (check_update) {
		check_updates()
		get_update()
	}
}
