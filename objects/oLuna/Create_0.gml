event_inherited()

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;

stopMe = false
lookDistance = 10

var _runFrameDuration = 75

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