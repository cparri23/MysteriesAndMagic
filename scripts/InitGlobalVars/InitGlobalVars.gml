global.lightInteraction = false
global.hardInteraction = false

global.events = ds_list_create()
global.eventInProgress = false
global.evt_DrawTextBack = false

enum animationName {
	runE, runNE, runN, runNW, runW, runSW, runS, runSE
}

enum animationLoopType {
	none, normal, pingPong	
}

enum frameDurationType {
	none, constant, specific	
}