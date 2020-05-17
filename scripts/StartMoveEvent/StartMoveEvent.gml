var _targetObject = moveData[moveVariables.targetObject]
start_X = _targetObject.x
start_Y = _targetObject.y

moveDirection = point_direction(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY]);
		
hSpeed = lengthdir_x(moveData[moveVariables.moveSpeed], moveDirection);
vSpeed = lengthdir_y(moveData[moveVariables.moveSpeed], moveDirection);
		
distanceToTravel = point_distance(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY])
distanceTraveled = 0

if(moveData[moveVariables.doDirectionalAnimation]) {
	direction = moveDirection
	moveData[moveVariables.animation] = GetAnimationNameFromDirection() //GetAnimationNameFromDirection()
}
	