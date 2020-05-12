///@name AddAnimationToEntity
///@param Name
///@param Sprite
///@param AngleData

var _frameData = []

_frameData[frameDataVariables.sprite] = argument1

if(argument_count > 2) {
	_frameData[frameDataVariables.angles] = argument2
}


if(!is_undefined(animations)) {
	animations[argument0] = _frameData
}
else {
	animations = []
	animations[argument0] = _frameData
}

doDraw = true