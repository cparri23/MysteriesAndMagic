///@param leftSprite 
///@param centerSprite
///@param rightSprite
///@param x
///@param y
///@param bodyWidth

var _leftSprite = argument0
var _middleSprite = argument1
var _rightSprite = argument2

var _leftDraw_X = argument3
var _drawY = argument4
var _drawHeight = sprite_get_height(_middleSprite)
var _bodyWidth = argument5

//var _rightSprite_Width = sprite_get_width(_rightSprite)
var _leftSprite_Width = sprite_get_width(_leftSprite)

var _middleDraw_X = _leftDraw_X + _leftSprite_Width
var _rightDraw_X = _leftDraw_X + _leftSprite_Width + _bodyWidth


draw_sprite(_leftSprite, 1, _leftDraw_X, _drawY)
draw_sprite_stretched(_middleSprite, 1, _middleDraw_X, _drawY, _bodyWidth, _drawHeight)
draw_sprite(_rightSprite, 1, _rightDraw_X, _drawY)