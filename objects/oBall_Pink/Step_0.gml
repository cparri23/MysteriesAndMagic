event_inherited();

if(startInteraction) {
	show_debug_message("Pink ball says hi!")
	txt1 = CreateTextEvent(["This is a pink sphere. This function will draw text in a similar way to draw_text only now you can set the space between each line of text - should the text occupy more than one line - and limit the width (in pixels) of the string per line so that should any line exceed this value, GameMaker: Studio will automatically split the text to the next line. A value of -1 for the line separation argument will default to a separation based on the height of the character in the chosen font.", "It is very pretty.", "I want to take it home with me!"])
	TextEvent_AddDuration(txt1, textDurationType.constant, TEXT_DURATION_NORMAL)
	txt2 = CreateTextEvent(["Perhaps I see what the other spheres are like."])
	//TextEvent_AddDuration(txt2, textDurationType.constant, TEXT_DURATION_NORMAL)
}