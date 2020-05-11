///@name AddAnimationToEntity
///@param Name
///@param Sprite
///@param LoopType
///@param DurationType
///@param DurationValue

var _animationData = []

_animationData[animationDataVariables.loopType] = argument1
_animationData[animationDataVariables.sprite] = argument1
_animationData[animationDataVariables.frameDurationType] = argument2
_animationData[animationDataVariables.frameDurationData] = argument3

if(!is_undefined(animations)) {
	animations[argument0] = _animationData
}
