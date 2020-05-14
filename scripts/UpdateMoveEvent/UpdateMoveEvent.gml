var _moveObject = moveData[moveVariables.targetObject]
var _target_X = moveData[moveVariables.targetX]
var _target_Y = moveData[moveVariables.targetY]
var _moveSpeed = moveData[moveVariables.moveSpeed]

var _doAnimation = moveData[moveVariables.doAnimation]

if(distanceTraveled > (distanceToTravel - _moveSpeed)) {
	_moveObject.x = _target_X
	_moveObject.y = _target_Y
	MoveEvent_End()
	exit
}

show_debug_message(_doAnimation)

if(_doAnimation) {
	var _desiredAnimation = moveData[moveVariables.animation]
	show_debug_message("doing animation")
	if(_moveObject.activeAnimation != _desiredAnimation) {
		with _moveObject {
			show_debug_message("changed animation")
			ChangeEntityAnimation(_desiredAnimation)	
		}
	}
}


_moveObject.x += hSpeed
_moveObject.y += vSpeed
distanceTraveled += _moveSpeed

