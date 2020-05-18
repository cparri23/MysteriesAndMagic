///param ActiveFrame


switch idleType {
	case animationIdleType.static:
		activeAnimation = animationName.stillIdle
		activeAnimationData = animations[activeAnimation]
		activeAnimationSprite = activeAnimationData[animationVariables.sprite]
		sprite_index = activeAnimationSprite
		
		if(argument_count > 0) {
			image_index = argument[0]
		}
		else {
			image_index = 0
		}
		AnimationHandler_RemoveSelf()
	break
	case animationIdleType.directional:
		activeAnimation = animationName.stillIdle
		activeAnimationData = animations[activeAnimation]
		activeAnimationSprite = activeAnimationData[animationVariables.sprite]
		activeAnimationAngles = activeAnimationData[animationVariables.frameAngles]
		show_debug_message(activeAnimationAngles)
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
