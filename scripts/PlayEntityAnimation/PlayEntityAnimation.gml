///@name PlayEntityAnimation
///@param object
///@param animationName

timeOnActiveFrame += FRAME_DURATION;
//show_debug_message(timeOnActiveFrame)
if (timeOnActiveFrame > activeFrameDuration) {
	
	timeOnActiveFrame = 0
	
	UpdateLocalFrame()
	UpdateFrameDuration()
	
	image_index = localFrame;
	
}