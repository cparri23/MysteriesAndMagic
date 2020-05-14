///@param lookType

if(argument_count > 0) {
	lookType = argument[0]
}
else {
	lookType = playerInteractLookType.sprite
}

var _playerLookX = global.playerLookX
var _playerLookY = global.playerLookY
var _targetTop = 0
var _targetLeft = 0
var _targetBottom = 0
var _targetRight = 0
switch lookType {
	case playerInteractLookType.collisionMask:
		return position_meeting(_playerLookX, _playerLookY, id)
	break
	case playerInteractLookType.sprite:
		_targetTop = y - sprite_yoffset
		_targetLeft = x - sprite_xoffset
		_targetBottom = _targetTop + sprite_height
		_targetRight = _targetLeft + sprite_width
		return point_in_rectangle(_playerLookX, _playerLookY, _targetLeft, _targetTop, 
								  _targetRight, _targetBottom)
	break
	
}


