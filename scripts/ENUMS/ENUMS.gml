enum animationName {
	none,
	idle, stillIdle, 
	custom_1, custom_2, custom_3,
	runE, runNE, runN, runNW, runW, runSW, runS, runSE
}

enum frameDataName {
	none, idle	
}

enum frameDataVariables {
	sprite, angles
}

enum animationVariables {
	sprite, loopType, frameDurationType, frameDurationData, frameAngles
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
	text, doDuration, durationType, durationData, doName, nameType, nameData, nameBank,
	doChoices, choiceData, choiceEvents
}

enum textDurationType {
	none, constant, specific	
}

enum textNameType {
	none, constant, specific	
}

enum moveVariables {
	targetObject, targetX, targetY, moveSpeed, moveDirection, moveDistance, doAnimation, animation, doDirectionalAnimation, vectorInput
}

enum gameStates {
	none, inMenu, inCutscene, inTrail, inInteraction
}

enum eventType {
	text, move
}	