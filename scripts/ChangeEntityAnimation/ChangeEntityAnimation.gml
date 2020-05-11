///@Name ChangeEntityAnimation
///@param AnimationName
	
var _newAnimation = argument0

activeAnimationData = animations[_newAnimation]
activeAnimationSprite = activeAnimationData[animationDataVariables.sprite]
activeAnimationLoopType = activeAnimationData[animationDataVariables.loopType]
activeAnimationDurationType = activeAnimationData[animationDataVariables.frameDurationType]
activeAnimationDurationData = activeAnimationData[animationDataVariables.frameDurationData]
	
	
if(activeAnimationDurationType == animationDurationType.specific) {
	activeFrameDuration = activeAnimationDurationData[0]	
}
else {
	activeFrameDuration = activeAnimationDurationData	
}

activeAnimationTotalFrames = sprite_get_number(activeAnimationSprite)
sprite_index = activeAnimationSprite

var _self = object_index

//Should be own function
with (AnimationHandler) {
	ds_list_add(animateObjects, _self)	
	amountOfObjectsToDraw = ds_list_size(animateObjects)
}