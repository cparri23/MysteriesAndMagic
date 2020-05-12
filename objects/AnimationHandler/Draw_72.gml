for (i = 0; i < amountOfObjectsToDraw; i++) {
	show_debug_message(i)
	with animateObjects[| i] {
		depth = -y
		PlayEntityAnimation()
	}
}