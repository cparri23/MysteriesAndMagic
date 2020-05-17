//show_debug_message("Events remaining:" + string(ds_queue_size(global.eventQueue)))
if(ds_queue_size(global.eventQueue) > 0 && !global.eventInProgress) {
	var _event = ds_queue_head(global.eventQueue)
	var _eventType = _event.myEventType
	var _waitForEvent = _event.waitForMe
	var _stopPlayer = _event.makePlayerInEvent
	if (_stopPlayer) {
		var _player = instance_find(oLuna, 1)
		with oLuna {
			ChangeEntityToIdle()	
		}
	}
	
	global.eventInProgress = _waitForEvent 
	
	switch _eventType {
		case eventType.text:
			ds_queue_enqueue(global.textQueue, _event)
		break
		case eventType.move:
			with(_event) {
				StartMoveEvent()	
			}
			ds_queue_enqueue(global.moveQueue, _event)
		break
	}
	
	if(!_waitForEvent) {
		ds_queue_dequeue(global.eventQueue)
	}
}