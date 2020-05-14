show_debug_message("Events remaining:" + string(ds_queue_size(global.eventQueue)))
if(ds_queue_size(global.eventQueue) > 0 && !global.eventInProgress) {
	var _event = ds_queue_head(global.eventQueue)
	var _eventType = _event.myEventType
	var _waitForEvent = _event.waitForMe
	
	global.eventInProgress = _waitForEvent 
	
	switch _eventType {
		case eventType.text:
			ds_queue_enqueue(global.textQueue, _event)
		break
	}
	
	if(!_waitForEvent) {
		ds_queue_dequeue(global.eventQueue)
	}
}