/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(start_interaction) {
	TurnToPlayer()
	//CreateDialogueBox(["Hey, Luna, what's going on here?", "I'm unsure... maybe we should invesigate these spheres?", "Perhaps. You go ahead, but be careful.", "Okay!"], "Static", NORMAL_TEXT_DURATION, "Conversation", ["", "Luna", "Swordsman"], [2, 1, 2, 1])
	start_interaction = false
}