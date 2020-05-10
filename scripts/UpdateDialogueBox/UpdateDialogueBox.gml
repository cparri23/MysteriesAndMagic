var hitEnter = keyboard_check_released(vk_enter)
if (!bufferEnter && hitEnter) {
	bufferEnter = true
}
if (hitEnter) {
	if(dispLetter < string_length(text[dispPage])) {
		dispLetter = string_length(text[dispPage]) - 1
	}
	else {
		dispPage++
		if(dispPage > array_length_1d(text) - 1) {
			instance_destroy(self)
			instance_destroy(cursor)
			exit
		}
		if(text_name_type = "Conversation") {
			text_name_num = text_name_array[dispPage]
			drawName = text_name[text_name_num]
		}

		dispLetter = 0
		drawCursor = false
		instance_destroy(cursor)
	}
	
}
if (dispLetter < string_length(text[dispPage])) {
		durExhaused += FRAME_DURATION
		if (durExhaused >= text_duration) {
			durExhaused -= text_duration
			dispLetter++;
		}
}
else {
	if(drawCursor == false) {
		cursor = instance_create_layer(txt_cursor_x, txt_cursor_y, "Instances", ouiTextCursor)
		drawCursor = true
	}
}

drawString = string_copy(text[dispPage], 0, dispLetter)


draw_text_ext(x, y - 10, drawName, 5, sprite_width - (margin * 2))
draw_text_ext(x + margin, y + margin, drawString, 5, sprite_width - (margin * 2))
