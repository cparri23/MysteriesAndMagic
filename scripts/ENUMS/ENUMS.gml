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

enum animationDataVariables {
	sprite, loopType, frameDurationType, frameDurationData, 
}

enum animationLoopType {
	none, once, forward, pingPong	
}

enum animationDurationType {
	none, constant, specific	
}

enum drawIdleType {
	none, static, directional, animated, animatedDirectional	
}

enum idleFrameAngles {
	none, diagonals, cardinal, all	
}

enum playerInteractLookType {
	sprite, collisionMask	
}

enum gameStates {
	none, inMenu, inCutscene, inTrail, inInteraction
}