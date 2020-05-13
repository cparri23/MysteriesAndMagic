if(ds_queue_size(global.textQueue) > 0) {
	global.playerCanInteract = false
	TextHandler_DrawTextBox()
	//show_debug_message(ds_queue_head(global.textQueue))
	with(ds_queue_head(global.textQueue)) {
		UpdateTextEvent()
		//show_debug_message("Current number of text events: " + string(ds_queue_size(global.textQueue)))
	}
}