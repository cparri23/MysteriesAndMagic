///@params textEvent
///@params choices
///@params choiceEvents

var _textEvent = argument0
var _choices = argument1
var _choiceEvents = argument2

_textEvent.textData[textVariables.choiceData] = _choices
_textEvent.textData[textVariables.choiceEvents] = _choiceEvents
_textEvent.textData[textVariables.doChoices] = true

with (_textEvent) {
	draw_set_font(TEXT_EVENT_FONT)
	
	textChoice_rightSprite = uiChoiceEdgeRight
	textChoice_middleSprite = uiChoiceBody
	textChoice_leftSprite = uiChoiceEdgeLeft

	textChoice_cursor = uiChoiceCursor

	var textChoice_rightSprite_width = sprite_get_width(uiChoiceEdgeRight) 
	var textChoice_leftSprite_width = sprite_get_width(uiChoiceEdgeLeft)

	var textChoice_boxHeight = sprite_get_height(uiChoiceBody)

	var textChoice_textMaxWidth = FindMaxWidthOfStrings(_choices)
	var textChoice_textHeight = string_height(_choices[0])

	textChoice_draw_marginX = 5
	textChoice_draw_width = textChoice_textMaxWidth + (2 * textChoice_draw_marginX)
	
	textChoice_draw_X = room_width - textChoice_draw_width - textChoice_rightSprite_width - textChoice_leftSprite_width
	textChoice_draw_IncrementY = textChoice_boxHeight

	textChoice_drawText_X = textChoice_draw_X + textChoice_draw_marginX + textChoice_rightSprite_width
	textChoice_drawText_OffsetY = (textChoice_boxHeight - textChoice_textHeight) / 2

	var _textHandler = instance_find(TextHandler, 0) 
	var _textBack_X = _textHandler.drawTextBackX
	var _textBack_Y = _textHandler.drawTextBackY

	var _numberOfChoices = array_length_1d(_choices)

	textChoice_draw_Y = _textBack_Y - (_numberOfChoices * textChoice_draw_IncrementY)
	
	var textChoice_cursor_width = sprite_get_width(uiChoiceCursor)
	var textChoice_cursor_height = sprite_get_height(uiChoiceCursor)
	textChoice_cursor_OffsetY = 2
	textChoice_cursor_margin_X = -5
	textChoice_cursor_X = textChoice_draw_X - textChoice_cursor_margin_X - textChoice_cursor_width
	textChoice_cursor_selected = 0
}
