if (animationIdleLoopType == animationLoopType.pingPong) 
{
	timeOnCurrentFrame += FRAME_DURATION;
	
	if (timeOnCurrentFrame > idleFrameDuration) {
		
		timeOnCurrentFrame -= idleFrameDuration
		
		if(playAnimationForward) {
			localFrame++	
		}
		else {
			localFrame--	
		}
		
		if (localFrame > totalIdleFrames) 
		{
			playAnimationForward = false;
			localFrame = totalIdleFrames - 1
		}
		else if (localFrame < 0) 
		{
			playAnimationForward = true;
			localFrame = 1
		}	
		
		if(animationIdleFrameDurationType = frameDurationType.specific) {
			idleFrameDuration = idleFrameDurations[localFrame]	
		}
		
	}
	
	image_index = localFrame;
}