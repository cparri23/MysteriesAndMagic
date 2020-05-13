///@params textEvent
///@params durationType
///@params durationData

var _textEvent = argument0
_textEvent.textData[textVariables.durationType] = argument1
_textEvent.textData[textVariables.durationData] = argument2
_textEvent.textData[textVariables.doDuration] = true

if(argument1 == textDurationType.constant) {
	currentPageDuration = argument2	
}