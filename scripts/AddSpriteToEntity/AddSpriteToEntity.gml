///@name AddAnimationToEntity
///@param Name
///@param Sprite
///@param AngleData

var _frameData = []

_frameData[animationVariables.sprite] = argument1

if(argument_count > 2) {
	_frameData[animationVariables.frameAngles] = argument2
}


if(!is_undefined(animations)) {
	animations[argument0] = _frameData
}
else {
	animations = []
	animations[argument0] = _frameData
}

doDraw = true