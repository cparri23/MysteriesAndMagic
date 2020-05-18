/// FindNearestVal
/// @params array
/// @params val


var array = argument0
var val = argument1

if( val < array[0] ) {
	return 0
}

for (i = 1; i < array_length_1d(array); i++;) {
	if(array[i] >= val) {
		if((val - array[i - 1]) > (array[i] - val)) {
			return i
		}
		else {
			return i - 1
		}
	}
}

return array_length_1d(array) - 1