if(inputMagnitude > 0) {
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	
	direction = inputDirection;
	var _target_X = x + hSpeed
	var _target_Y = y + vSpeed
	
	if(place_free(_target_X, _target_Y)) {
		x = _target_X;
		y = _target_Y;
	}
	moveAnimationName = GetAnimationNameFromDirection()

	if(moveAnimationName != activeAnimation) {
		ChangeEntityAnimation(moveAnimationName)
	}
}
else {
	if(keyReleased) {
		ChangeEntityToIdle()
	}
}