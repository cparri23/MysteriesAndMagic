var _moveObject = moveData[moveVariables.targetObject]
var _target_X = moveData[moveVariables.targetX]
var _target_Y = moveData[moveVariables.targetY]
var _moveSpeed = moveData[moveVariables.moveSpeed]

if(distanceTraveled > (distanceToTravel - _moveSpeed)) {
	_moveObject.x = _target_X
	_moveObject.y = _target_Y
	MoveEvent_End()
	exit
}

_moveObject.x += hSpeed
_moveObject.y += vSpeed
distanceTraveled += _moveSpeed

