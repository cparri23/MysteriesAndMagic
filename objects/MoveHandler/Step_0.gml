show_debug_message("Amount of items in move queue: " + string(ds_queue_size(global.moveQueue)))

if(ds_queue_size(global.moveQueue) > 0) {
	with(ds_queue_head(global.moveQueue)) {
		UpdateMoveEvent()
	}
}