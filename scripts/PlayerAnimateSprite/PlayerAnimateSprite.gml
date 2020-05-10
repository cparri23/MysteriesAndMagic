var _oldSprite = sprite_index;

if (inputMagnitude == 0 || global.lightInteraction || global.hardInteraction)
{
		sprite_index = spriteIdle;
}
else 
{
	direction = inputDirection;
	sprite_index = spriteRun;
	x += hSpeed;
	y += vSpeed;
}

if(_oldSprite != sprite_index) 
{
	localFrame = 0;	
}


var _totalFrames = sprite_get_number(sprite_index) / 8;
image_index = localFrame + (cardinalDirection * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

if (localFrame >= _totalFrames) 
{
	animationEnd = true;
	localFrame -= _totalFrames;
}
else 
{
	animationEnd = false;	
}


