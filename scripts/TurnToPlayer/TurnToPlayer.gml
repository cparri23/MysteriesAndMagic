var plyX = global.playerX
var plyY = global.playerY

var ang = 180 + point_direction(plyX, plyY, x, y) 
if (ang > 360) {
	ang -= 360	
}

var _activeAnimation = animations[activeAnimation]
var _angleData = _activeAnimation[animationVariables.frameAngles]

direction = ang

image_index = FindNearestIndex(_angleData, ang)