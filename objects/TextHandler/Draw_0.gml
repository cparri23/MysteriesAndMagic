if(ds_queue_size(global.textQueue) > 0) {
	global.playerCanInteract = false
	TextHandler_DrawTextBox()
	with(ds_queue_head(global.textQueue)) {
		UpdateTextEvent()	
	}
}