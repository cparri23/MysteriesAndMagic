textData[textVariables.text] = EMPTY_STRING

textData[textVariables.doDuration] = true
textData[textVariables.durationType] = textDurationType.constant 
textData[textVariables.durationData] = TEXT_DURATION_NORMAL

textData[textVariables.doName] = false
textData[textVariables.nameType] = textNameType.none
textData[textVariables.nameData] = undefined
textData[textVariables.nameBank] = undefined

textData[textVariables.doChoices] = false
textData[textVariables.choiceData] = undefined
textData[textVariables.choiceEvents] = undefined

dispLetter = 0
dispPage = 0
timeOnCurrentLetter = 0
letterDuration = 0 
doneProgressingText = false

textBackSprite = uiTextBox
textCursorSprite = uiTextCursor
textBackMargin = 10
nameMargin = 5

var window_width = room_width
var window_height = room_height
textBack_width = sprite_get_width(textBackSprite)
textBack_height = sprite_get_height(textBackSprite)

var cursor_width = sprite_get_width(textCursorSprite)
var cursor_height = sprite_get_height(textCursorSprite)

cursorX = window_width - textBackMargin - cursor_width
cursorY = window_height - textBackMargin - cursor_height
cursorExists = false

drawStringX = ((window_width - textBack_width) / 2) + textBackMargin
drawStringY = window_height - textBack_height + textBackMargin
drawStringLineSpace = 18
drawStringLineMaxLength = textBack_width - (2 * textBackMargin)

drawNameX = ((window_width - textBack_width) / 2) + nameMargin
drawNameY = window_height - textBack_height - nameMargin