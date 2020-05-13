enum animationName {
	none,
	idle,
	runE, runNE, runN, runNW, runW, runSW, runS, runSE
}

enum frameDataName {
	none, idle	
}

enum frameDataVariables {
	sprite, angles
}

enum frameAngleTypes {
	none, diagonals, cardinal, eight
}

enum animationVariables {
	sprite, loopType, frameDurationType, frameDurationData, 
}

enum animationLoopType {
	none, once, forward, pingPong	
}

enum animationDurationType {
	none, constant, specific	
}

enum animationIdleType {
	none, static, directional, animated, animatedDirectional	
}

enum animationIdleFrameAngles {
	none, diagonals, cardinal, all	
}

enum playerInteractLookType {
	sprite, collisionMask	
}

enum textVariables {
	text, doDuration, durationType, durationData, doName, nameType, nameData, nameBank
}

enum textDurationType {
	none, constant, specific	
}

enum textNameType {
	none, constant, specific	
}
enum gameStates {
	none, inMenu, inCutscene, inTrail, inInteraction
}