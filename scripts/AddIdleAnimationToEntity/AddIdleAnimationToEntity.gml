///@name AddAnimationToEntity
///@param Sprite
///@param LoopType
///@param DurationType
///@param DurationData

var _sprite = argument0
var _loopType = argument1
var _durationType = argument2
var _durationData = argument3

idleType = animationIdleType.animated

AddAnimationToEntity(animationName.stillIdle, _sprite, _loopType, _durationType, _durationData)