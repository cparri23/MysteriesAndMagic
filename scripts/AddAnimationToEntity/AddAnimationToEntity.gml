///@name AddAnimationToEntity
///@param Name
///@param Sprite
///@param LoopType
///@param DurationType
///@param DurationData

var _animationData = []

_animationData[animationVariables.sprite] = argument1
_animationData[animationVariables.loopType] = argument2
_animationData[animationVariables.frameDurationType] = argument3
_animationData[animationVariables.frameDurationData] = argument4

if(!is_undefined(animations)) {
	animations[argument0] = _animationData
}
else {
	animations = []
	animations[argument0] = _animationData
}

doDraw = true