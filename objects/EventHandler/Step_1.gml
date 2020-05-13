//show_debug_message("Events remaining:" + string(ds_list_size(global.eventQueue)))
if(ds_queue_size(global.eventQueue) > 0 && !global.eventInProgress) {
	//show_debug_message("Starting event.")
	//show_debug_message("Events left:" + string(ds_list_size(global.eventQueue)))
	global.eventQueue[|0].active = true
	global.eventQueue[|0].just_activated = true
	global.eventInProgress = true
	global.hardInteraction = true
	if(global.eventQueue[|0].evt_type == "Textbox") {
		global.evt_DrawTextBack = true	
	}
	if(global.hardInteraction) {
		with(oLuna) {
		stopMe = true	
		}	
	}
}