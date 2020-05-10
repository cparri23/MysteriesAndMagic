/// CheckArray
/// @param0 array
/// @param1 array

array = argument0
val = argument1

for( i=0; i < array_length_1d(array); i++) {
	if(array[i] == val) {
		return true	
	}
}

return false