/// @description Interaction Code

switch eventID {
	case 0:
		show_debug_message("Pink ball says hi!")
		txt1 = CreateTextEvent(["This is a pink sphere.", "It is very pretty.", "I want to take it home with me!"])
		TextEvent_AddName(txt1, textNameType.constant, "Luna")
		TextEvent_AddChoices(txt1, ["Take it.", "Leave it.", "Wait."], [1, 2, 3])
	break
	case 1:
		CreateTextEvent(["Luna took the Pink Sphere! It is content being held."])
		instance_destroy(self)
	break
	case 2:
		CreateTextEvent(["Luna left the Pink Sphere. It is content floating in peace."])
	break
	case 3:
		txt1 = CreateTextEvent(["Luna waited . . .", ". . . nothing happened."])
		TextEvent_AddDuration(txt1, textDurationType.constant, TEXT_DURATION_SLOW)
	break
}
	
