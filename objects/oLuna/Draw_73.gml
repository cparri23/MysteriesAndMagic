if(keyboard_check(vk_enter)) {
	//show_debug_message("Draw point")
	draw_set_colour(c_black)
	draw_sprite(sLookPoint, 0, global.playerLookX, global.playerLookY)
}