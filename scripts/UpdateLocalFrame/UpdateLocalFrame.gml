var _activeAnimationBiggestFrameIndex = activeAnimationTotalFrames - 1

switch activeAnimationLoopType {
	case animationLoopType.pingPong:
		
		if(playAnimationForward) {
			localFrame++	
		}
		else {
			localFrame--	
		}
		
		if (localFrame > _activeAnimationBiggestFrameIndex) {
			playAnimationForward = false;
			localFrame = _activeAnimationBiggestFrameIndex - 1
		}
		else if (localFrame < 0) {
			playAnimationForward = true;
			localFrame = 1
		}	
	break
	case animationLoopType.forward:
		localFrame++	
		if (localFrame > _activeAnimationBiggestFrameIndex) {
			localFrame = 0
		}
	break
	
}
