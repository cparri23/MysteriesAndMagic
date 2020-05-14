/// CreateAniMoveEvent
/// @params object
/// @params destination x
/// @params destination y
/// @params speed

	moveEvent = instance_create_layer(0, 0, "Instances", MoveEvent)
	moveEvent.start_X = x
	moveEvent.start_Y = y
	
	moveEvent.moveData[moveVariables.targetObject] = argument0
	moveEvent.moveData[moveVariables.targetX] = argument1
	moveEvent.moveData[moveVariables.targetY] = argument2
	moveEvent.moveData[moveVariables.moveSpeed] = argument3
	
	moveEvent.parentID = id
	moveEvent.myEventType = eventType.move
	moveEvent.waitForMe = true
	moveEvent.makePlayerInEvent = true
	
	with(moveEvent) {
		
		ds_queue_enqueue(global.eventQueue, self)
		
		moveDirection = point_direction(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY]);
		
		hSpeed = lengthdir_x(moveData[moveVariables.moveSpeed], moveDirection);
		vSpeed = lengthdir_y(moveData[moveVariables.moveSpeed], moveDirection);
		
		isTargetObjectSolid = solid
		solid = false
		var _player = instance_find(oLuna, 1)
		object_set_solid(_player, false)
		
		distanceToTravel = point_distance(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY])
		distanceTraveled = 0
	}
	
	