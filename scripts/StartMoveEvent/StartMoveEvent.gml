var _targetObject = moveData[moveVariables.targetObject]
start_X = _targetObject.x
start_Y = _targetObject.y

if(moveData[moveVariables.vectorInput]) {
	moveDirection = moveData[moveVariables.moveDirection] * 45
	distanceToTravel = moveData[moveVariables.moveDistance]
	var _adjust_X = lengthdir_x(distanceToTravel, moveDirection)
	var _adjust_Y = lengthdir_y(distanceToTravel, moveDirection)
	moveData[moveVariables.targetX] = start_X + _adjust_X
	moveData[moveVariables.targetY] = start_Y + _adjust_Y
}
else {
	moveDirection = point_direction(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY]);
	distanceToTravel = point_distance(start_X, start_Y, moveData[moveVariables.targetX], moveData[moveVariables.targetY])
}

distanceTraveled = 0

hSpeed = lengthdir_x(moveData[moveVariables.moveSpeed], moveDirection);
vSpeed = lengthdir_y(moveData[moveVariables.moveSpeed], moveDirection);

if(moveData[moveVariables.doDirectionalAnimation]) {
	direction = moveDirection
	moveData[moveVariables.animation] = GetAnimationNameFromDirection() //GetAnimationNameFromDirection()
}
	