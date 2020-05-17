var _moveObject = moveData[moveVariables.targetObject]
var _target_X = moveData[moveVariables.targetX]
var _target_Y = moveData[moveVariables.targetY]
var _moveSpeed = moveData[moveVariables.moveSpeed]

var _doAnimation = moveData[moveVariables.doAnimation]

if(distanceTraveled > (distanceToTravel - _moveSpeed)) {
	_moveObject.x = _target_X
	_moveObject.y = _target_Y
	_moveObject.direction = parentID.moveDirection
	MoveEvent_End()
	exit
}

if(_doAnimation) {
	var _desiredAnimation = moveData[moveVariables.animation]
	show_debug_message("doing animation")
	if(_moveObject.activeAnimation != _desiredAnimation) {
		with _moveObject {
			ChangeEntityAnimation(_desiredAnimation)	
		}
	}
}


_moveObject.x += hSpeed
_moveObject.y += vSpeed
distanceTraveled += _moveSpeed

