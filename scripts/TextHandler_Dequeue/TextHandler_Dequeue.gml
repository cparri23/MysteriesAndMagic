with(TextHandler) {
	ds_queue_dequeue(global.textQueue)
	var _queueSize = ds_queue_size(global.textQueue)
	show_debug_message("Current number of text events: " + string(_queueSize))
	if(_queueSize == 0) {
		global.playerCanInteract = true	
		show_debug_message("Letting player interact again")
		show_debug_message(global.playerCanInteract)
	}
	
	
}