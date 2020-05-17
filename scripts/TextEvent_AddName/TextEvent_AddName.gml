///@params textEvent
///@params nameType
///@params nameData
///@params nameBank

var _textEvent = argument[0]
var _nameType = argument[1]
var _nameData = argument[2]

_textEvent.textData[textVariables.nameType] = argument[1]
_textEvent.textData[textVariables.nameData] = argument[2]
_textEvent.textData[textVariables.doName] = true

if(argument_count > 3) {
	var _nameBank = argument[3]
	_textEvent.textData[textVariables.nameBank] = argument[3]
}


switch _nameType {
	case textNameType.constant:
		_textEvent.drawName = _nameData
		break
	case textNameType.specific:
		var _firstNameIndex = _nameData[0]
		_textEvent.drawName = _nameBank[_firstNameIndex]
		break
	default:
		_textEvent.drawName = EMPTY_STRING
}
