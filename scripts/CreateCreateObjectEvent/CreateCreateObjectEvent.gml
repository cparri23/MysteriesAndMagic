/// CreateAniMoveEvent
/// @params object
/// @params name
/// @params x
/// @params y

	objectToCreate = instance_create_layer(0, 0, "Instances", CreateObjectEvent)
	objectToCreate.object = argument0;
	objectToCreate.name = argument1;
	objectToCreate.create_X = argument2;
	objectToCreate.create_Y = argument3;
	
	
	
	objectToCreate.myEventType = eventType.createObject
	objectToCreate.waitForMe = false
	objectToCreate.makePlayerInEvent = false
	var _self = id;
	with(objectToCreate) {
		ds_queue_enqueue(global.eventQueue, self)
		parentID = _self
		
	}