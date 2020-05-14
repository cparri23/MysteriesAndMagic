/// @description Interaction Code

switch eventID {
	case 0:
		show_debug_message("Purple ball says hi!")
		//ChangeEntityAnimation(animationName.custom_1)
		move1 = CreateMoveEvent(self, 100, 100, 1)
		MoveEvent_AddAnimation(move1, animationName.custom_1)
	break
}
	
