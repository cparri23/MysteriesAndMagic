///@name AddAnimationToEntity
///@param Name
///@param Sprite
///@param LoopType
///@param DurationType
///@param DurationData

var _animationData = []

_animationData[animationDataVariables.sprite] = argument1
_animationData[animationDataVariables.loopType] = argument2
_animationData[animationDataVariables.frameDurationType] = argument3
_animationData[animationDataVariables.frameDurationData] = argument4

if(!is_undefined(animations)) {
	animations[argument0] = _animationData
}
else {
	animations = []
	animations[argument0] = _animationData
}

doDraw = true