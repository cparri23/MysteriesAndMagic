/// @description Insert description here
// You can write your code in this editor
	textBackSprite = uiTextBox
	var win_w = room_width
	var win_h = room_height
	var im_w = sprite_get_width(uiTextBox)
	var im_h = sprite_get_height(uiTextBox)
	drw_x = (win_w - im_w) / 2
	drw_y = win_h - im_h
	margin = 10
