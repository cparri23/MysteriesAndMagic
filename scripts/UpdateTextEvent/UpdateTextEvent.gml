var hitEnter = keyboard_check_released(vk_enter)
//Must be prevent interaction from skipping first text crawl
//if (!bufferEnter && hitEnter) {
//	bufferEnter = true
//	hitEnter = false
//}

var _text = textData[textVariables.text]
var _writingLetters = dispLetter < string_length(_text[dispPage])
var _finalPage = (dispPage >= (array_length_1d(_text) - 1))

if(!doneProgressingText) {
	if (hitEnter) {
		if(_writingLetters) {
			dispLetter = string_length(_text[dispPage]) - 1
		}
		else {
			if(_finalPage) {
				if(!textData[textVariables.doChoices]) {
					TextEvent_End()
					instance_destroy(cursor)
					exit
				}
				else {
					doneProgressingText = true	
				}
			}
			else {
				dispPage++
				TextEvent_UpdateName()
				TextEvent_UpdateDuration()
				dispLetter = 0
			}
		if(cursorExists) {
			cursorExists = false
			instance_destroy(cursor)
		}
		}
	}

	if (_writingLetters) {
		timeOnCurrentLetter += FRAME_DURATION
		if (timeOnCurrentLetter >= letterDuration) {
			timeOnCurrentLetter -= letterDuration
			dispLetter++;
		}
	}
	else {
		if(cursorExists == false && !doneProgressingText) {
			cursor = instance_create_layer(cursorX, cursorY, "Instances", ouiTextCursor)
			cursorExists = true
		}
	}
}
else {
	//show_debug_message("update choices")
	TextEvent_UpdateChoices()	
}

drawString = string_copy(_text[dispPage], 0, dispLetter)
draw_set_font(TimesNewPixel)
draw_text_ext(drawStringX, drawStringY, drawString, drawStringLineSpace, drawStringLineMaxLength)

if(textData[textVariables.doName]) {
	draw_text(drawNameX, drawNameY, drawName)
}
