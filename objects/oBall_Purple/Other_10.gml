/// @description Interaction Code

switch eventID {
	case 0:
		show_debug_message("Purple ball says hi!")
		move1 = CreateMoveEvent(oLuna, 180, 200, 3)
		MoveEvent_AddDirectionalAnimation(move1)
		move2 = CreateMoveEvent(oLuna, 300, 200, 3)
		MoveEvent_AddDirectionalAnimation(move2)
		move3 = CreateMoveEvent(oLuna, 300, 300, 3)
		MoveEvent_AddDirectionalAnimation(move3)
		move4 = CreateMoveEvent(oLuna, 500, 400, 3)
		MoveEvent_AddDirectionalAnimation(move4)
		move5 = CreateMoveEvent(oLuna, 180, 200, 3)
		MoveEvent_AddDirectionalAnimation(move5)
	break
}
	
