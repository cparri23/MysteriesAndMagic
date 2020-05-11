///@name PlayEntityAnimation
///@param object
///@param animationName

timeOnActiveFrame += FRAME_DURATION;

if (timeOnActiveFrame > activeFrameDuration) {
	
	timeOnActiveFrame = 0
	
	UpdateLocalFrame()
	show_debug_message(localFrame)
	UpdateFrameDuration()
	
	image_index = localFrame;
	
}