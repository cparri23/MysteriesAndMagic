hSpeed_look = lengthdir_x(lookDistance, direction);
vSpeed_look = lengthdir_y(lookDistance, direction);
lookXOffset = ((bbox_right + bbox_left) / 2) - x
lookYOffset = ((bbox_top + bbox_bottom) / 2) - y
	
global.playerLookX = x + hSpeed_look + lookXOffset;
global.playerLookY = y + vSpeed_look + lookYOffset;