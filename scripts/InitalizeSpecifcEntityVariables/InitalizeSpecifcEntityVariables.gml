if(doDraw) {
	visible = true
	image_speed = 0
	//If idle type is not animated, then add to draw with X direction
	
	//if(is_undefined(activeAnimation)) {
	//	if(!is_undefined(animations[animationName.idle])) {
	//		show_debug_message("setting to animated idle type")
	//		idleType = animationIdleType.animated
	//		activeAnimation = animationName.idle
	//	}
	//	else if(!is_undefined(animations[animationName.stillIdle])) {
	//		show_debug_message("setting to directional idle type")
	//		idleType = animationIdleType.directional
	//		activeAnimation = animationName.stillIdle
	//	}
	//	else {
	//		idleType = animationIdleType.static
	//		activeAnimation = animationName.none
	//		exit
	//	}
	//}
	
	ChangeEntityToIdle()
	//ChangeEntityAnimation(activeAnimation)
	
	localFrame = 0
	timeOnActiveFrame = 0
	playAnimationForward = true
}