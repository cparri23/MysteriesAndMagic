///@Name ChangeEntityAnimation
///@param AnimationName
	
var _newAnimation = argument0

activeAnimationData = animations[_newAnimation]
activeAnimationSprite = activeAnimationData[animationVariables.sprite]
activeAnimationLoopType = activeAnimationData[animationVariables.loopType]
activeAnimationDurationType = activeAnimationData[animationVariables.frameDurationType]
activeAnimationDurationData = activeAnimationData[animationVariables.frameDurationData]
	
	
if(activeAnimationDurationType == animationDurationType.specific) {
	activeFrameDuration = activeAnimationDurationData[0]	
}
else {
	activeFrameDuration = activeAnimationDurationData	
}

activeAnimationTotalFrames = sprite_get_number(activeAnimationSprite)
sprite_index = activeAnimationSprite
image_speed = 0


	

var _self = id

//Should be own function
with (AnimationHandler) {
	var _objectIndex = ds_list_find_index(animateObjects, _self)
	var _objectIsBeingAnimated = (_objectIndex >= 0)
	if (!_objectIsBeingAnimated) {
		ds_list_add(animateObjects, _self)
		amountOfObjectsToDraw = ds_list_size(animateObjects)
		localFrame = 0
		timeOnActiveFrame = 0
		playAnimationForward = true
	}
	
}