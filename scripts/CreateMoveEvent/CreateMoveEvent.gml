/// CreateAniMoveEvent
/// @params object
/// @params destination x
/// @params destination y
/// @params speed

	moveEvent = instance_create_layer(0, 0, "Instances", MoveEvent)
	
	
	moveEvent.moveData[moveVariables.targetObject] = argument0
	moveEvent.moveData[moveVariables.targetX] = argument1
	moveEvent.moveData[moveVariables.targetY] = argument2
	moveEvent.moveData[moveVariables.moveSpeed] = argument3
	

	moveEvent.myEventType = eventType.move
	moveEvent.waitForMe = true
	moveEvent.makePlayerInEvent = true

	with(moveEvent) {
		
		ds_queue_enqueue(global.eventQueue, self)
		parentID = id
		
	}
	
	return moveEvent