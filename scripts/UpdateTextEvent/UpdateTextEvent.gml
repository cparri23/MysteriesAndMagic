var hitEnter = keyboard_check_released(vk_enter)

//Must be prevent interaction from skipping first text crawl
if (!bufferEnter && hitEnter) {
	bufferEnter = true
	hitEnter = false
}

var _text = textData[textVariables.text]
if (hitEnter) {
	if(dispLetter < string_length(_text[dispPage])) {
		dispLetter = string_length(_text[dispPage]) - 1
	}
	else {
		dispPage++
		if(dispPage > array_length_1d(_text) - 1) {
			TextHandler_Dequeue()
			instance_destroy(self)
			instance_destroy(cursor)
			exit
		}
		//Set name here
		UpdateTextEvent_UpdateDuration()
		dispLetter = 0
		cursorExists = false
		instance_destroy(cursor)
	}
}
if (dispLetter < string_length(_text[dispPage])) {
		timeOnCurrentLetter += FRAME_DURATION
		if (timeOnCurrentLetter >= letterDuration) {
			timeOnCurrentLetter -= letterDuration
			dispLetter++;
		}
}
else {
	if(cursorExists == false) {
		cursor = instance_create_layer(cursorX, cursorY, "Instances", ouiTextCursor)
		cursorExists = true
	}
}

drawString = string_copy(_text[dispPage], 0, dispLetter)
draw_set_font(TimesNewPixel)
draw_text_ext(drawStringX, drawStringY, drawString, drawStringLineSpace, drawStringLineMaxLength)
