ds_queue_dequeue(global.moveQueue)

var _targetObject = moveData[moveVariables.targetObject]
with _targetObject {
	ChangeEntityToIdle()	
}
// Update animation
if(waitForMe) {
	global.eventInProgress = false
	ds_queue_dequeue(global.eventQueue)
	global.playerInEvent = EventHandler_CheckNextEvent_PlayerInEvent()
}



instance_destroy(self)