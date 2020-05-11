if(doAnimation) {
	visible = true
	image_speed = 0
	//If idle type is not animated, then add to draw with X direction
	if(is_undefined(activeAnimation)) {
		if(!is_undefined(animations[animationName.idle])) {
			activeAnimation = animationName.idle
		}
		else {
			activeAnimation = animationName.none
			exit
		}
	}
	show_debug_message(animations)
	show_debug_message(activeAnimation)
	ChangeEntityAnimation(activeAnimation)
	
	localFrame = 0
	timeOnActiveFrame = 0
	playAnimationForward = true
}