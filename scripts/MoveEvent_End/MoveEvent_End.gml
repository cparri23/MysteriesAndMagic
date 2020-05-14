ds_queue_dequeue(global.moveQueue)

if(waitForMe) {
	global.eventInProgress = false
	ds_queue_dequeue(global.eventQueue)
	global.playerInEvent = EventHandler_CheckNextEvent_PlayerInEvent()
}
if(isTargetObjectSolid) {
	var _targetObject = moveData[moveVariables.targetObject]
	object_set_solid(_targetObject, true)	
}

		var _player = instance_find(oLuna, 1)
		object_set_solid(_player, false)
instance_destroy(self)