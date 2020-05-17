var _eightTurnsFromEast
_eightTurnsFromEast = round(direction / 45)



switch _eightTurnsFromEast {
	case 0:
	return animationName.runE
	case 1:
	return animationName.runNE
	case 2:
	return animationName.runN
	case 3:
	return animationName.runNW
	case 4:
	return animationName.runW
	case 5:
	return animationName.runSW
	case 6:
	return animationName.runS
	case 7:
	return animationName.runSE
}