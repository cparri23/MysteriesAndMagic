event_inherited();

//show_debug_message(activeAnimation)

if(!global.eventInProgress && direction != defaultDirection) {
	show_debug_message("setting direction")
	direction = defaultDirection
	ChangeEntityToIdle()
}

if(startInteraction) {
	eventID = passiveEventID
	event_perform(ev_other, ev_user0)
}