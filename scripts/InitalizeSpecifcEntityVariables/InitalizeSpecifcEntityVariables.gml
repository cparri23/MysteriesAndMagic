if(animationIdleLoopType = animationLoopType.pingPong) {
	visible = true
	doAnimation = true
	localFrame = 0
	totalIdleFrames = image_number - 1
	timeOnCurrentFrame = 0
	
	if(animationIdleFrameDurationType = frameDurationType.specific) {
		idleFrameDuration = idleFrameDurations[0]	
	}
	playAnimationForward = true
}