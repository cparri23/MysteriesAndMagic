for (i = 0; i < amountOfObjectsToDraw; i++) {
	with animateObjects[| i] {
		depth = -y
		PlayEntityAnimation()
	}
}