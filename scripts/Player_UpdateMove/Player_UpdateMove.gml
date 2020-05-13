if(inputMagnitude > 0) {
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	
	direction = inputDirection;
	x += hSpeed;
	y += vSpeed;
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