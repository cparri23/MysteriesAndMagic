if(ds_queue_size(global.eventQueue) > 0 && ds_queue_head(global.eventQueue).makePlayerInEvent) {
	return true
}
return false