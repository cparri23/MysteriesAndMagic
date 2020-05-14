var _numberOfChoices = array_length_1d(textData[textVariables.choiceData])
var _choiceEvents = textData[textVariables.choiceEvents]
var _releasedW = keyboard_check_released(ord("W"))
var _releasedS = keyboard_check_released(ord("S"))
var _releasedEnter = keyboard_check_released(vk_enter)

var _adjustCursorIndex = _releasedS - _releasedW

textChoice_cursor_selected += _adjustCursorIndex

if(textChoice_cursor_selected >= _numberOfChoices) {
	textChoice_cursor_selected = 0
}
else if(textChoice_cursor_selected < 0) {
	textChoice_cursor_selected = _numberOfChoices - 1
}

var _choices = textData[textVariables.choiceData]
var _currentY = textChoice_draw_Y

draw_sprite(textChoice_leftSprite, 1, textChoice_draw_X, textChoice_draw_Y)

for(i = 0; i < _numberOfChoices; i++) {
	DrawUISizeableWindow(textChoice_leftSprite, textChoice_middleSprite, textChoice_rightSprite,
							textChoice_draw_X, _currentY, textChoice_draw_width)
	draw_text(textChoice_drawText_X, _currentY + textChoice_drawText_OffsetY, _choices[i]) 
	if(i == textChoice_cursor_selected) {
		draw_sprite(textChoice_cursor, 1, textChoice_cursor_X, _currentY + textChoice_cursor_OffsetY)
	}
	_currentY += textChoice_draw_IncrementY
}

if(_releasedEnter) {
	PerformObjectEvent(parentID, _choiceEvents[textChoice_cursor_selected])
	TextHandler_Dequeue()
	instance_destroy(self)
}