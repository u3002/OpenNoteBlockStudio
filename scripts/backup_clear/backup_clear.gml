function backup_clear() {
	// backup_clear()
	// Deletes the backup files stored temporarily for auto-recovery

	var file = ""

	//if (file_exists_lib(backup_file)) {
	//	files_delete_lib(backup_file)
	//}
	while(1) {
		file = file_find_first(backup_directory + "*.nbs", 0)
		if (file = "") break
		
		if (message_yesnocancel("There are still unrecovered songs in your auto-recovery folder. Would you like to recover them the next time you open the program?\n\n(If you click 'No', these files will be deleted permanently!)", "Unsaved files")) {
			break;
		}
		
		files_delete_lib(backup_directory + file)
	}


}

function backup_delete_own_instance() {
	// Deletes only the backup file created by the calling instance.
	
	if (file_exists_lib(backup_directory + song_backupname)) {
		files_delete_lib(backup_directory + song_backupname)
	}
	
}

function update_backup_name() {
	// Rename backup file to the current filename. Call when the active file of this window changes.
	
	file_rename_lib(backup_directory + song_backupname, backup_directory + filename_name(filename))
	song_backupname = filename_name(filename_change_ext(filename, ".nbs"));
	tonextbackup = backupmins
}