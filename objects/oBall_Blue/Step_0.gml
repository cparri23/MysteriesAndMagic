event_inherited();

if(start_interaction) {
	CreateDialogueBox(["Hello, Luna!", "Hello, Sphere!"], "Static", NORMAL_TEXT_DURATION, "Conversation", ["", "Luna", "Floating Ball"], [1, 2])
	start_interaction = false
}