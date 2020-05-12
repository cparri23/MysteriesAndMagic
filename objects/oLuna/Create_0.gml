event_inherited()

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;

stopMe = false
lookDistance = 20
var _runFrameDuration = 75

lookXOffset = ((bbox_right + bbox_left) / 2) - x
lookYOffset = ((bbox_top + bbox_bottom) / 2)  - y

show_debug_message(((bbox_right + bbox_left) / 2) - x)

	show_debug_message("bb info")
	show_debug_message(bbox_left)
	show_debug_message(bbox_right)
	show_debug_message(sprite_xoffset)
	show_debug_message(x)

//AddAnimationToEntity(animationName.idle, sLunaIdle, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddSpriteToEntity(frameDataName.idle, sLunaIdle, ANGLES_EIGHT)
idleType = drawIdleType.directional

AddAnimationToEntity(animationName.runE, sLunaRunE, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runNE, sLunaRunNE, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runN, sLunaRunN, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runNW, sLunaRunNW, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runW, sLunaRunW, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runSW, sLunaRunSW, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runS, sLunaRunS, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)
AddAnimationToEntity(animationName.runSE, sLunaRunSE, animationLoopType.forward, animationDurationType.constant, _runFrameDuration)

InitalizeSpecifcEntityVariables()