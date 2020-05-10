event_inherited();

if(start_interaction) {
	CreateDialogueBox(["Quick, Run in a square!"], "Static", FAST_TEXT_DURATION, "Conversation", ["", "Purple Sphere"], [1])
	CreateAniMoveEvent(oLuna, 100, 0, true, 4.0, true, "")
	CreateAniMoveEvent(oLuna, 100, 6, true, 4.0, true, "")
	CreateAniMoveEvent(oLuna, 100, 4, true, 4.0, true, "")
	CreateAniMoveEvent(oLuna, 100, 2, true, 4.0, false, "")
	CreateDialogueBox(["... What did this accomplish?", "We completed a test! :-)"], "Static", NORMAL_TEXT_DURATION, "Conversation", ["", "Luna", "Purple Sphere"], [1, 2])
	start_interaction = false
}