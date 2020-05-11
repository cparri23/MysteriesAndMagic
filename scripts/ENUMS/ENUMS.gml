enum animationName {
	none,
	idle,
	runE, runNE, runN, runNW, runW, runSW, runS, runSE
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

enum gameStates {
	none, inMenu, inCutscene, inTrail, inInteraction
}