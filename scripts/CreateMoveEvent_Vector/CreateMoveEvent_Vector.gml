/// CreateAniMoveEvent
/// @params object
/// @params direction (0 - 7)
/// @params distance
/// @params speed

	moveEvent = instance_create_layer(0, 0, "Instances", MoveEvent)
	
	
	moveEvent.moveData[moveVariables.targetObject] = argument0
	moveEvent.moveData[moveVariables.moveDirection] = argument1
	moveEvent.moveData[moveVariables.moveDistance] = argument2
	moveEvent.moveData[moveVariables.moveSpeed] = argument3
	
	moveEvent.moveData[moveVariables.vectorInput] = true
	
	moveEvent.myEventType = eventType.move
	moveEvent.waitForMe = true
	moveEvent.makePlayerInEvent = true

	var _self = id
	
	with(moveEvent) {
		
		ds_queue_enqueue(global.eventQueue, self)
		parentID = _self
		
	}
	
	return moveEvent