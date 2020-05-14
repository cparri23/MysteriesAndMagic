ds_queue_dequeue(global.textQueue)

if(waitForMe) {
	global.eventInProgress = false
	ds_queue_dequeue(global.eventQueue)
	global.playerInEvent = EventHandler_CheckNextEvent_PlayerInEvent()
}

instance_destroy(self)