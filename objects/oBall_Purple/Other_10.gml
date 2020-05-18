/// @description Interaction Code

switch eventID {
	case 0:
		var _txt	
		_txt = CreateTextEvent(["Hello, Luna. Would you like to do a animation test?"])
		TextEvent_AddName(_txt, textNameType.constant, "Purple Sphere")
		TextEvent_AddChoices(_txt, ["Please play a normal move event.", "Please play a vector move event.", "No thanks."], [1, 2, 3])
	break
	case 1:
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
	case 2:
		var _move
		_move = CreateMoveEvent_Vector(oLuna, 0, 100, 3)
		MoveEvent_AddDirectionalAnimation(_move)
		_move = CreateMoveEvent_Vector(oLuna, 6, 100, 3)
		MoveEvent_AddDirectionalAnimation(_move)
		_move = CreateMoveEvent_Vector(oLuna, 4, 100, 3)
		MoveEvent_AddDirectionalAnimation(_move)
		_move = CreateMoveEvent_Vector(oLuna, 2, 100, 3)
		MoveEvent_AddDirectionalAnimation(_move)
	break
}
	
if(eventID == 1 || eventID == 2) {
		var _txt	
		_txt = CreateTextEvent(["Test complete!"])
				TextEvent_AddName(_txt, textNameType.constant, "Purple Sphere")
}
