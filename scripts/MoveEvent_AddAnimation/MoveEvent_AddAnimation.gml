///@param moveEvent
///@param animationName

var _moveEvent = argument0
var _animation = argument1

with _moveEvent {
	moveData[moveVariables.doAnimation] = true
	moveData[moveVariables.animation] = _animation
}
