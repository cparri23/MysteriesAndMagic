event_inherited();

if(start_interaction) {
	CreateDialogueBox(["This is a pink floating sphere.", "I enjoy looking at it.", "I hope I can find more pretty objects like this!"], "Static", NORMAL_TEXT_DURATION, "Conversation", ["", "Luna"], [1, 1, 1])
	CreateDialogueBox(["We should go see what the other spheres are doing."], "Static", NORMAL_TEXT_DURATION, "Conversation", ["", "Luna"], [1])
	with(oLuna) {
		stopMe = true	
	}
	start_interaction = false
}