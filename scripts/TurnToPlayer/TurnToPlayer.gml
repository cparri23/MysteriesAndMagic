var plyX = global.playerX
var plyY = global.playerY

var ang = 180 + point_direction(plyX, plyY, x, y) 
if (ang > 360) {
	ang -= 360	
}
show_debug_message(ang)
image_index = FindNearestIndex(frame_angles, ang)