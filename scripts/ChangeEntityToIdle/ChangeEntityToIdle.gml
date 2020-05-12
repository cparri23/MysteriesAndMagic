///param ActiveFrame


switch idleType {
	case drawIdleType.static:
		show_debug_message("to idle statoc")
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
		RemoveSelfFromAnimationHandler()
	break
	case drawIdleType.directional:
		show_debug_message("to idle direction")
		activeAnimation = frameDataName.idle
		activeAnimationData = animations[activeAnimation]
		activeAnimationSprite = activeAnimationData[frameDataVariables.sprite]
		activeAnimationAngles = activeAnimationData[frameDataVariables.angles]
		
		sprite_index = activeAnimationSprite
		image_index = FindNearestIndex(activeAnimationAngles, direction)
		
		//Should still work if not in the list
		RemoveSelfFromAnimationHandler()
	break
	case drawIdleType.animated:
		show_debug_message("to idle animated")
		ChangeEntityAnimation(animationName.idle)
	break
}

image_speed = 0
