///param ActiveFrame


switch idleType {
	case animationIdleType.static:
		activeAnimation = frameDataName.idle
		activeAnimationData = animations[activeAnimation]
		activeAnimationSprite = activeAnimationData[frameDataVariables.sprite]
		sprite_index = activeAnimationData[frameDataVariables.sprite]
		
		if(argument_count > 0) {
			image_index = argument[0]
		}
		else {
			image_index = 0
		}
		AnimationHandler_RemoveSelf()
	break
	case animationIdleType.directional:
		activeAnimation = frameDataName.idle
		activeAnimationData = animations[activeAnimation]
		activeAnimationSprite = activeAnimationData[frameDataVariables.sprite]
		activeAnimationAngles = activeAnimationData[frameDataVariables.angles]
		
		sprite_index = activeAnimationSprite
		image_index = FindNearestIndex(activeAnimationAngles, direction)
		
		//Should still work if not in the list
		AnimationHandler_RemoveSelf()
	break
	case animationIdleType.animated:
		ChangeEntityAnimation(animationName.idle)
	break
}

image_speed = 0
