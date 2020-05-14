///@params array

var _stringArray = argument0
var _stringArrayLength = array_length_1d(_stringArray)
var _longestLength = 0

for(i = 0; i < _stringArrayLength; i++) {
	var _currentWidth = string_width(_stringArray[i])
	if(_longestLength < _currentWidth) {
		_longestLength = _currentWidth
	}
}

return _longestLength