///@params textEvent
///@params durationType
///@params durationData

var _textEvent = argument0
var _durationType = argument1
var _durationData = argument2

_textEvent.textData[textVariables.durationType] = _durationType
_textEvent.textData[textVariables.durationData] = _durationData
_textEvent.textData[textVariables.doDuration] = true

show_debug_message(_textEvent.textData[textVariables.doName])

switch _durationType {
	case textDurationType.constant:
		_textEvent.letterDuration = _durationData
		break
	case textDurationType.specific:
		_textEvent.letterDuration = _durationData[0]
		break
	default:
		_textEvent.letterDuration = TEXT_DURATION_NORMAL
	
}