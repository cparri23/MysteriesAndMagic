keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

cardinalDirection = round(direction / 45)


depth = -y;

 // Update Sprite 
if(stopMe) 
{
	sprite_index = spriteIdle;
	image_index = cardinalDirection;
	stopMe = false
}
	
if(!global.hardInteraction) {
	PlayerAnimateSprite();
}

hSpeed_look = lengthdir_x(lookDistance, direction);
vSpeed_look = lengthdir_y(lookDistance, direction);

global.playerLookX = x + hSpeed_look;
global.playerLookY = y + vSpeed_look;
global.playerX = x;
global.playerY = y;
global.playerCanInteract = ! (global.lightInteraction || global.hardInteraction)


stopMe = false