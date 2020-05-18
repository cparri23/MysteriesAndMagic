/// @description Insert description here
// You can write your code in this editor
/// @description Interaction Code

TurnToPlayer()
switch eventID {
	case 0:
		show_debug_message("Viktor says hi!")
		txt1 = CreateTextEvent(["Hey, Luna.", "Hi!"])
		TextEvent_AddName(txt1, textNameType.specific, [0, 1], ["Luna", "Swordsman"])
	break
}